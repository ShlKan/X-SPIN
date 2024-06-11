/***** spin: pangen2.h *****/

/* Copyright (c) 1989-2007 by Lucent Technologies, Bell Laboratories.     */
/* All Rights Reserved.  This software is for educational purposes only.  */
/* No guarantee whatsoever is expressed or implied by the distribution of */
/* this code.  Permission is given to distribute this code provided that  */
/* this introductory message is not removed and no monies are exchanged.  */
/* Software written by Gerard J. Holzmann.  For tool documentation see:   */
/*             http://spinroot.com/                                       */
/* Send all bug-reports and/or questions to: bugs@spinroot.com            */
/* (c) 2007: small additions for V5.0 to support multi-core verifications */

static const char *Pre0[] = {
	"#ifdef SC",
	"	#define _FILE_OFFSET_BITS	64",	/* allows file sizes greater than 2Gb */
	"#endif",
	"#include <stdio.h>",
	"#include <signal.h>",
	"#include <stdlib.h>",
	"#include <stdarg.h>",
	"#include <string.h>",
	"#include <ctype.h>",
	"#include <errno.h>",
	"#if defined(WIN32) || defined(WIN64)",
		"#include <time.h>",
	"#else",
		"#include <unistd.h>",
		"#include <sys/times.h>",
	"#endif",
	"#include <sys/types.h>",	/* defines off_t */
	"#include <sys/stat.h>",
	"#include <limits.h>",
	"#include <fcntl.h>",

	"#define Offsetof(X, Y)	((ulong)(&(((X *)0)->Y)))",
	"#ifndef max",
	"#define max(a,b) (((a)<(b)) ? (b) : (a))",
	"#endif",
	"#ifndef PRINTF",
	"int Printf(const char *fmt, ...); /* prototype only */",
	"#endif",
	0,
};

static const char *Separate[] = {
	"#ifdef COLLAPSE",
	"	#if (NCORE>1 && !defined(SEP_STATE)) || defined(BFS_PAR)",
	"		volatile ulong *ncomps;	/* in shared memory */",
	"	#else",
	"		ulong ncomps[256+2];",
	"	#endif",
	"#endif",
	"Trans ***trans;	/* 1 ptr per state per proctype */\n",
	#ifdef XSPIN
	"int *SI;",
	"int *sicnt;",
	"int xspinflag = 0,numberofbastates;",
	#endif
	"",
	"#if VECTORSZ>32000",
	"	int P_o[MAXPROC], P_o_tmp[MAXPROC+1];",
	"	int Q_o[MAXQ],    Q_o_tmp[MAXPROC+1];",
	"",
	"	int *proc_offset = (int *) P_o;",
	"	int *q_offset    = (int *) Q_o;",
	"#else",
	"	short P_o[MAXPROC], P_o_tmp[MAXPROC+1];",
	"	short Q_o[MAXQ],    Q_o_tmp[MAXPROC+1];",
	"",
	"	short *proc_offset = (short *) P_o;",
	"	short *q_offset    = (short *) Q_o;",
	"#endif",
	"uchar P_s[MAXPROC+1], P_s_tmp[MAXPROC+1];",
	"uchar Q_s[MAXQ+1],    Q_s_tmp[MAXQ+1];",
	"uchar *proc_skip = (uchar *) P_s;",
	"uchar *q_skip    = (uchar *) Q_s;",
	"",
	"#ifdef TRIX",
	"	TRIX_v6 *freebodies;",
	"	TRIX_v6 *processes[MAXPROC+1];",
	"	TRIX_v6 *channels[MAXQ+1];",
	"	long _p_count[MAXPROC];",
	"	long _c_count[MAXPROC];",
	"#endif\n",
	"ulong  vsize;	/* vector size in bytes */",
	"#ifdef SVDUMP",
	"	int vprefix=0, svfd;	/* runtime option -pN */",
	"#endif",
	"char *tprefix = \"trail\";	/* runtime option -tsuffix */",
	"short boq = -1;		/* blocked_on_queue status */",
	"int _;	/* predefined write-only variable */",
	"#ifdef PEG",
	"	long peg[NTRANS];",
	"#endif",
	0,
};

static const char *Preamble[] = {
	"#ifdef RANDOMIZE",
	"	#define T_RAND  RANDOMIZE",
	"#endif",
	"#ifdef CNTRSTACK",
	"	#define onstack_now()	(LL[trpt->j6] && LL[trpt->j7])",
	"	#define onstack_put()	 LL[trpt->j6]++; LL[trpt->j7]++",
	"	#define onstack_zap()	 LL[trpt->j6]--; LL[trpt->j7]--",
	"#endif",

	"#if !defined(SAFETY) && !defined(NOCOMP)",
		/*
		 * V_A identifies states in the current statespace
		 * A_V identifies states in the 'other' statespace
		 * S_A remembers how many leading bytes in the sv
		 * are used for these markers + fairness bits
		 */
	"	#define V_A	(((now._a_t&1)?2:1) << (now._a_t&2))",
	"	#define A_V	(((now._a_t&1)?1:2) << (now._a_t&2))",
	"	int	S_A = 0;",
	"#else",
	"	#define V_A	0",
	"	#define A_V	0",
	"	#define S_A	0",
	"#endif",

"#ifdef MA",
	"#undef onstack_now",
	"#undef onstack_put",
	"#undef onstack_zap",
	"#define onstack_put()	;",
	"#define onstack_zap()	g_store((char *) &now, vsize, 4)",
"#else",
	"#if defined(FULLSTACK) && !defined(BITSTATE)",
	"#define onstack_put()	trpt->ostate = Lstate",
	"#define onstack_zap()	{ \\",
	"	if (trpt->ostate) \\",
	"		trpt->ostate->tagged = \\",
	"		(S_A)? (trpt->ostate->tagged&~V_A) : 0; \\",
	"	}",
	"#endif",
"#endif",
	"H_el	**H_tab, **S_Tab;",
	"/* #ifndef BFS_PAR */",
	"	H_el   *Lstate;",
	"/* #endif */",
	"Trail	*trail, *trpt;",
	"FILE	*efd;",
	"uchar	*this;",
	"long	maxdepth=10000;",
	"long	omaxdepth=10000;",
	"#ifdef BCS",
	"	/* bitflags in trpt->bcs */",
	"	#define B_PHASE1	1",
	"	#define B_PHASE2	2",
	"	#define B_FORCED	4",
	"int	sched_max = 0;",
	"#endif",
	"",
	"double	quota;	/* time limit */",
	"#if NCORE>1",
	"	long	z_handoff = -1;",
	"#endif",
	"#ifdef SC",	/* stack cycling */
	"	char	*stackfile;",
 	"#endif",
	"uchar	*SS, *LL;",
	"",
	"uchar	reversing = 0;",
	"uchar	HASH_NR = 0;",
	"",
	"double memcnt = (double) 0;",
	"double memlim = (double) (1<<30); /* 1 GB */",
	"#if NCORE>1",
	"double mem_reserved = (double) 0;",
	"#endif",
	"",
	"/* for emalloc: */",
	"static char *have;",
	"static long left = 0L;",
	"static double fragment = (double) 0;",
	"static ulong grow;",
	"",
#if 1
	"unsigned int HASH_CONST[] = {",
	"	/* generated by hashgen 421 -- assumes 4 bytes per int */",
	"	0x100d4e63,	0x0fc22f87,	0xa7155c77,	0x78f2c3b9,",
	"	0xde32d207,	0xc27d305b,	0x1bb3fb2b,	0x2798c7a5,",
	"	0x9c675ffd,	0x777d9081,	0x07aef2f1,	0xae08922f,",
	"	0x5bd365b7,	0xed51c47b,	0x9b5aeea1,	0xbcc9d431,",
	"	0x396d8fff,	0xa2fd1367,	0x08616521,	0x5e84991f,",
	"	0x87495bc5,	0x2930039b,	0xceb6a593,	0xfe522d63,",
	"	0x7ff60baf,	0xf89b1fbf,	0x74c01755,	0xe0c559bf,",
	"	0x3669fc47,	0x8756d3bf,	0x14f78445,	0x24c41779,",
	"	0x0af7b129,	0xde22368d,	0x3e1c01e3,	0xaf773e49,",
	"	0x5b762459,	0x86d12911,	0x0953a3af,	0xb66dc23d,",
	"	0x96b3bd4f,	0x19b1dd51,	0xd886fbc3,	0xa7f3a025,",
	"	0xccb48e63,	0x87d8f027,	0x2bea270d,	0xdb0e9379,",
	"	0x78c09f21,	0x0cbbfe07,	0xea4bc7c3,	0x5bfbc3c9,",
	"	0x3c6e53fd,	0xab320cdd,	0x31041409,	0x416e7485,",
	"	0xe41d75fd,	0xc3c5060f,	0x201a9dc1,	0x93dee72b,",
	"	0x6461305f,	0xc571dec5,	0xa1fd21c5,	0xfb421ce1,",
	"	0x7f024b05,	0xfa518819,	0x6c9777fb,	0x0d4d9351,",
	"	0x08b33861,	0xccb9d0f3,	0x34112791,	0xe962d7c9,",
	"	0x8d742211,	0xcd9c47a1,	0x64437b69,	0x5fe40feb,",
	"	0x806113cb,	0x10e1d593,	0x821851b3,	0x057a1ff3,",
	"	0x8ededc0b,	0x90dd5b31,	0x635ff359,	0x68dbcd35,",
	"	0x1050ff4f,	0xdbb07257,	0x486336db,	0x83af1e75,",
	"	0x432f1799,	0xc1d0e7e7,	0x21f4eb5b,	0x881ec2c1,",
	"	0x23f3b539,	0x6cdfb80d,	0x71d474cf,	0x97d5d4a9,",
	"	0xf721d2e5,	0xb5ff3711,	0x3f2e58cd,	0x4e06e3d9,",
	"	0x7d711739,	0x927887df,	0x7d57ad71,	0x232eb767,",
	"	0xe3f5cc51,	0x6576b443,	0xed17bf1f,	0x8828b637,",
	"	0xc940f6ab,	0xc7b830ef,	0x11ed8a13,	0xaff20949,",
	"	0xf28a8465,	0x0da10cf9,	0xb512497d,	0x44accae1,",
	"	0x95e0929f,	0xe08c8901,	0xfd22d6c9,	0xb6a5c029,",
	"	0xaadb428d,	0x6e8a453d,	0x3d5c0195,	0x8bf4ae39,",
	"	0xbf83ab19,	0x3e9dac33,	0xc4df075d,	0x39472d71,",
	"	0xb8647725,	0x1a6d4887,	0x78a03577,	0xafd76ef7,",
	"	0xc1a1d6b3,	0x1afb33c5,	0x87896299,	0x5cc992ef,",
	"	0x7f805d0d,	0x089a039b,	0xa353cc27,	0x57b296b3,",
	"	0x52badec9,	0xc916e431,	0x09171957,	0x14996d51,",
	"	0xe87e32c7,	0xb4fdbb5d,	0xdd216a03,	0x4ddd3fff,",
	"	0x767d5c57,	0x79c97509,	0xab70543b,	0xc5feca4f,",
	"	0x8eb37b89,	0x20a2cefd,	0xf4b00b91,	0xf166593d,",
	"	0x7bf50f65,	0x753e6c8b,	0xfb5b81dd,	0xf2d45ef5,",
	"	0x9741c04f,	0x300da48d,	0x01dc4121,	0xa112cd47,",
	"	0x0223b24b,	0xa89fbce7,	0x681e1f7b,	0xe7c6aedf,",
	"	0x1fd3d523,	0x561ba723,	0xf54042fb,	0x1a516751,",
	"	0xcd085bd5,	0xe74246d5,	0x8b170b5d,	0x249985e9,",
	"	0x5b4d9cf7,	0xe9912323,	0x5fc0f339,	0x41f8f051,",
	"	0x8a296fb1,	0x62909f51,	0x2c05d695,	0x095efccb,",
	"	0xa91574f1,	0x0f5cc6c3,	0x23a2ca2b,	0xc6053ec1,",
	"	0xeb19e081,	0x3d1b3997,	0xb0c5f3cd,	0xe5d85b35,",
	"	0x1cb1bdf1,	0x0c8f278f,	0x518249c3,	0x9f61b68d,",
	"	0xade0919d,	0x779e29c3,	0xdbac9485,	0x2ce149a9,",
	"	0x254c2409,	0x205b34fb,	0xc8ab1a89,	0x6b4a2585,",
	"	0x2303d94b,	0x8fa186b9,	0x49826da5,	0xd23a37ad,",
	"	0x680b18c9,	0xa46fbd7f,	0xe42c2cf9,	0xf7cfcb5f,",
	"	0xb4842b8b,	0xe483780d,	0x66cf756b,	0x3eb73781,",
	"	0x41ca17a5,	0x59f91b0f,	0x92fb67d9,	0x0a5c330f,",
	"	0x46013fdb,	0x3b0634af,	0x9024f533,	0x96a001a7,",
	"	0x15bcd793,	0x3a311fb1,	0x78913b8b,	0x9d4a5ddf,",
	"	0x33189b31,	0xa99e8283,	0xf7cb29e9,	0x12d64a27,",
	"	0xeda770ff,	0xa7320297,	0xbd3c14a5,	0x96d0156f,",
	"	0x0115db95,	0x7f79f52b,	0xa6d52521,	0xa063d4bd,",
	"	0x9cb5e039,	0x42cf8195,	0xcb716835,	0x1bc21273,",
	"	0x5a67ad27,	0x4b3b0545,	0x162cda67,	0x0489166b,",
	"	0x85fd06a9,	0x562b037d,	0x995bc1f3,	0xe144e78b,",
	"	0x1e749f69,	0xa36df057,	0xcfee1667,	0x8c4116b7,",
	"	0x94647fe3,	0xe6899df7,	0x6d218981,	0xf1069079,",
	"	0xd1851a33,	0xf424fc83,	0x24467005,	0xad8caf59,",
	"	0x1ae5da13,	0x497612f9,	0x10f6d1ef,	0xeaf4ff05,",
	"	0x405f030b,	0x693b041d,	0x2065a645,	0x9fec71b3,",
	"	0xc3bd1b0f,	0xf29217a3,	0x0f25e15d,	0xd48c2b97,",
	"	0xce8acf2d,	0x0629489b,	0x1a5b0e01,	0x32d0c059,",
	"	0x2d3664bf,	0xc45f3833,	0xd57f551b,	0xbdd991c5,",
	"	0x9f97da9f,	0xa029c2a9,	0x5dd0cbdf,	0xe237ba41,",
	"	0x62bb0b59,	0x93e7d037,	0x7e495619,	0x51b8282f,",
	"	0x853e8ef3,	0x9b8abbeb,	0x055f66f9,	0x2736f7e5,",
	"	0x8d7e6353,	0x143abb65,	0x4e2bb5b3,	0x872e1adf,",
	"	0x8fcac853,	0xb7cf6e57,	0x12177f3d,	0x1d2da641,",
	"	0x07856425,	0xc0ed53dd,	0x252271d9,	0x79874843,",
	"	0x0aa8c9b5,	0x7e804f93,	0x2d080e09,	0x3929ddfd,",
	"	0x36433dbd,	0xd6568c17,	0xe624e939,	0xb33189ef,",
	"	0x29e68bff,	0x8aae2433,	0xe6335499,	0xc5facd9d,",
	"	0xbd5afc65,	0x7a584fa7,	0xab191435,	0x64bbdeef,",
	"	0x9f5cd8e1,	0xb3a1be05,	0xbd0c1753,	0xb00e2c7f,",
	"	0x6a96e315,	0x96a31589,	0x660af5af,	0xc0438d43,",
	"	0x17637373,	0x6460e8df,	0x7d458de9,	0xd76b923f,",
	"	0x316f045f,	0x3ccbd035,	0x63f64d81,	0xd990d969,",
	"	0x7c860a93,	0x99269ff7,	0x6fbcac8f,	0xd8cc562b,",
	"	0x67141071,	0x09f85ea3,	0x1298f2dd,	0x41fa86e5,",
	"	0xce1d7cf5,	0x6b232c9d,	0x8f093d4b,	0x3203ad4b,",
	"	0x07d70d5f,	0x38c44c75,	0x0887c9ef,	0x1833acf5,",
	"	0xa3607f85,	0x7d367573,	0x0ea4ffc3,	0xad2d09c1,",
	"	0x7a1e664f,	0xef41dff5,	0x03563491,	0x67f30a1f,",
	"	0x5ce5f9ef,	0xa2487a27,	0xe5077957,	0x9beb36fd,",
	"	0x16e41251,	0x216799ef,	0x07181f8d,	0xc191c3cf,",
	"	0xba21cab5,	0x73944eb7,	0xdf9eb69d,	0x5fef6cfd,",
	"	0xd750a6f5,	0x04f3fa43,	0x7cb2d063,	0xd3bdb369,",
	"	0x35f35981,	0x9f294633,	0x5e293517,	0x70e51d05,",
	"	0xf8db618d,	0x66ee05db,	0x835eaa77,	0x166a02c3,",
	"	0xb516f283,	0x94102293,	0x1ace50a5,	0x64072651,",
	"	0x66df7b75,	0x02e1b261,	0x8e6a73b9,	0x19dddfe7,",
	"	0xd551cf39,	0x391c17cb,	0xf4304de5,	0xcd67b8d1,",
	"	0x25873e8d,	0x115b4c71,	0x36e062f3,	0xaec0c7c9,",
	"	0xd929f79d,	0x935a661b,	0xda762b47,	0x170bd76b,",
	"	0x1a955cb5,	0x341fb0ef,	0x7f366cef,	0xc98f60c7,",
	"	0xa4181af3,	0xa94a8837,	0x5fa3bc43,	0x11c638c1,",
	"	0x4e66fabb,	0x30ab85cf,	0x250704ef,	0x8bf3bc07,",
	"	0x6d2cd5ab,	0x613ef9c3,	0xb8e62149,	0x0404fd91,",
	"	0xa04fd9b1,	0xa5e389eb,	0x9543bd23,	0xad6ca1f9,",
	"	0x210c49ab,	0xf8e9532b,	0x854fba89,	0xdc7fc6bb,",
	"	0x48a051a7,	0x6b2f383b,	0x61a4b433,	0xd3af231b,",
	"	0xc5023fc7,	0xa5aa85df,	0xa0cd1157,	0x4206f64d,",
	"	0x3fea31c3,	0x62d510a1,	0x13988957,	0x6a11a033,",
	"	0x46f2a3b7,	0x2784ef85,	0x229eb9eb,	0x9c0c3053,",
	"	0x5b7ead39,	0x82ae9afb,	0xf99e9fb3,	0x914b6459,",
	"	0xaf05edd7,	0xc82710dd,	0x8fc1ea1f,	0x7e0d7a8d,",
	"	0x7c7592e9,	0x65321017,	0xea57553f,	0x4aeb49ff,",
	"	0x5239ae4d,	0x4b4b4585,	0x94091c21,	0x7eaaf4cb,",
	"	0x6b489d6f,	0xecb9c0c3,	0x29a7af63,	0xaf117a0d,",
	"	0x969ea6cd,	0x7658a34d,	0x5fc0bba9,	0x26e99b7f,",
	"	0x7a6f260f,	0xe37c34f1,	0x1a1569bb,	0xc3bc7371,",
	"	0x8567543d,	0xad0c46a9,	0xa1264fd9,	0x16f10b29,",
	"	0x5e00dd3b,	0xf85b6bcd,	0xa2d32d8b,	0x4a3c8d43,",
	"	0x6b33b959,	0x4fd1e6c9,	0x7938b8a9,	0x1ec795c7,",
	"	0xe2ef3409,	0x83c16b9d,	0x0d3fd9eb,	0xeb461ad7,",
	"	0xb09c831d,	0xaf052001,	0x7911164d,	0x1a9dc191,",
	"	0xb52a0815,	0x0f732157,	0xc68c4831,	0x12cf3cbb };",
#else
	"unsigned int HASH_CONST[] = {",
	"	/* asuming 4 bytes per int */",
	"	0x100d4e63,	0x0fc22f87,",
	"	0x3ff0c3ff,	0x38e84cd7,",
	"	0x02b148e9,	0x98b2e49d,",
	"	0xb616d379,	0xa5247fd9,",
	"	0xbae92a15,	0xb91c8bc5,",
	"	0x8e5880f3,	0xacd7c069,",
	"	0xb4c44bb3,	0x2ead1fb7,",
	"	0x8e428171,	0xdbebd459,",
	"	0x00400007,	0x04c11db7,",
	"	0x828ae611,	0x6cb25933,",
	"	0x86cdd651,	0x9e8f5f21,",
	"	0xd5f8d8e7,	0x9c4e956f,",
	"	0xb5cf2c71,	0x2e805a6d,",
	"	0x33fc3a55,	0xaf203ed1,",
	"	0xe31f5909,	0x5276db35,",
	"	0x0c565ef7,	0x273d1aa5,",
	"	0x8923b1dd,	0xa9acaac5,",
	"	0xd1f69207,	0xedfd944b,",
	"	0x9a68e46b,	0x5355e13f,",
	"	0x7eeb44f9,	0x932beea9,",
	"	0x330c4cd3,	0x87f34e5f,",
	"	0x1b5851b7,	0xb9ca6447,",
	"	0x58f96a8f,	0x1b3b5307,",
	"	0x31c387b3,	0xf35f0f35,",
	"	0xa0acc4df,	0xf3140303,",
	"	0x2446245d,	0xe4b8f4ef,",
	"	0x5c007383,	0x68e648af,",
	"	0x1814fba7,	0xcdf731b5,",
	"	0xd09ccb4b,	0xb92d0eff,",
	"	0xcc3c6b67,	0xd3af6a57,",
	"	0xf44fc3f5,	0x5bb67623,",
	"	0xaeb9c953,	0x5e0ac739,",
	"	0x3a7fda09,	0x5edf39eb,",
	"	0x661eefd9,	0x6423f0d1,",
	"	0x910fe413,	0x9ec92297,",
	"	0x4bd8159d,	0xa7b16ee1,",
	"	0x89d484e9,	0x7f305cb3,",
	"	0xc5f303e7,	0x415deeef,",
	"	0x09986f89,	0x7e9c4117,",
	"	0x0b7cbedb,	0xf9ed7561,",
	"	0x7a20ac99,	0xf05adef3,",
	"	0x5893d75b,	0x44d73327,",
	"	0xb583c873,	0x324d2145,",
	"	0x7fa3829b,	0xe4b47a23,",
	"	0xe256d94f,	0xb1fd8959,",
	"	0xe561a321,	0x1435ac09,",
	"	0xdd62408b,	0x02ec0bcb,",
	"	0x5469b785,	0x2f4f50bb,",
	"	0x20f19395,	0xf96ba085,",
	"	0x2381f937,	0x768e2a11 };",
#endif
	"",
	"#if NCORE>1",
	"extern int core_id;",
	"#endif",
	"long	mreached=0;",
	"int done=0, errors=0, Nrun=1;",
	"int	c_init_done=0;",
	"char	*c_stack_start = (char *) 0;",
	"double	nstates=0, nlinks=0, truncs=0, truncs2=0;",
	"double	nlost=0, nShadow=0, hcmp=0, ngrabs=0;",
	"#ifdef BFS_PAR",
	"extern ulong bfs_punt;",
	"#endif",
	"#ifdef PUTPID",
	"char *progname;",
	"#endif",
	"#if defined(ZAPH) && defined(BITSTATE)",
	"double zstates = 0;",
	"#endif",
	"/* int	c_init_run; */",
	"#ifdef REVERSE",
	"	#define P_REVERSE",
	"#endif",
	"#ifdef T_REVERSE",
	"	int	t_reverse = 1;", /* can be modified with a parameter */
	"#else",
	"	int	t_reverse = 0;",
	"#endif",
	"#ifdef BFS",
	"double midrv=0, failedrv=0, revrv=0;",
	"#endif",
	"ulong	nr_states=0; /* nodes in DFA */",
	"long	Fa=0, Fh=0, Zh=0, Zn=0;",
	"long	PUT=0, PROBE=0, ZAPS=0;",
	"long	Ccheck=0, Cholds=0;",
	"int	a_cycles=0, upto=1, strict=0, verbose = 0, signoff = 0;",
	"#ifdef HAS_CODE",
	"int	gui = 0, coltrace = 0, readtrail = 0;",
	"int	whichtrail = 0, whichclaim = -1, onlyproc = -1, silent = 0;",
	"char	*claimname;",
	"#endif",
	"int	state_tables=0, fairness=0, no_rck=0, Nr_Trails=0, dodot=0;",
	"char	simvals[256];",
	"#ifndef INLINE",
	"int	TstOnly=0;",
	"#endif",
	"ulong mask, nmask;",
	"#ifdef BITSTATE",
	"int	ssize=27;	/* 16 Mb */",
	"#else",
	"int	ssize=24;	/* 16M slots */",
	"#endif",
	"int	hmax=0, svmax=0, smax=0;",
	"int	Maxbody=0, XX;",
	"uchar	*noptr, *noqptr;	/* used by Pptr(x) and Qptr(x) */",
	"#ifdef VAR_RANGES",
	"void logval(char *, int);",
	"void dumpranges(void);",
	"#endif",

	"#ifdef MA",
	"#define INLINE_REV",
	"extern void dfa_init(unsigned short);",
	"extern int  dfa_member(ulong);",
	"extern int  dfa_store(uchar *);",
	"unsigned int	maxgs = 0;",
	"#endif",
	"",
	"#ifdef ALIGNED",
	"	State	comp_now __attribute__ ((aligned (8)));",
	"	/* gcc 64-bit aligned for Itanium2 systems */",
	"	/* MAJOR runtime penalty if not used on those systems */",
	"#else",
	"	State	comp_now;	/* compressed state vector */",
	"#endif",
	"",
	"#ifndef HC",
	"	#ifdef BFS_PAR",
	"		State tmp_msk;",
	"	#endif",
	"	State	comp_msk;",
	"	uchar	*Mask = (uchar *) &comp_msk;",
	"#endif",
	"#ifdef COLLAPSE",
	"	State	comp_tmp;",
	"	static char	*scratch = (char *) &comp_tmp;",
	"#endif",
	"",
	"_Stack	*stack; 	/* for queues, processes */",
	"Svtack	*svtack;	/* for old state vectors */",
	"#ifdef BITSTATE",
	"static unsigned int hfns = 3;	/* new default */",
	"#endif",
	"static ulong j1_spin, j2_spin; /* 5.2.1: avoid nameclash with math.h */",
	"static ulong j3_spin, j4_spin;",
	"ulong K1, K2;",
	"#ifdef BITSTATE",
	"long udmem;",
	"#endif",
	"#ifndef BFS_PAR",
	"static long	A_depth = 0;",
	"#endif",
	"long	depth = 0;",
	"long depthfound = -1;	/* loop detection */",
	/* depth: not static to support -S2, but possible clash with embedded code */
	"#if NCORE>1",
	"long nr_handoffs = 0;",
	"#endif",
	"uchar	warned = 0, iterative = 0, exclusive = 0, like_java = 0, every_error = 0;",
	"uchar	noasserts = 0, noends = 0, bounded = 0;",
	"uint	s_rand = 12345;	/* default seed */",

	"#if SYNC>0 && ASYNC==0",
	"void set_recvs(void);",
	"int  no_recvs(int);",
	"#endif",
	"#if SYNC",
	"#define IfNotBlocked	if (boq != -1) continue;",
	"#define UnBlock     	boq = -1",
	"#else",
	"#define IfNotBlocked	/* cannot block */",
	"#define UnBlock     	/* don't bother */",
	"#endif\n",
	"#ifdef BITSTATE",
	"int (*b_store)(char *, int);",
	"int bstore_reg(char *, int);",
	"int bstore_mod(char *, int);",
	"#endif",
	"",
	"void dfs_uerror(char *);",
	"void dfs_Uerror(char *);",
	"#ifdef BFS_PAR",
	"void bfs_uerror(char *);",
	"void bfs_Uerror(char *);",
	"#endif",
	"void (*uerror)(char *);",
	"void (*Uerror)(char *);",
	"void (*hasher)(uchar *, int);",
	"void (*o_hash)(uchar *, int, int);",
	"void d_hash(uchar *, int);",
	"void d_sfh(uchar *, int);",
	"void o_hash32(uchar *, int, int);",
	"void o_hash64(uchar *, int, int);",
	"",
	"void active_procs(void);",
	"void cleanup(void);",
	"void do_the_search(void);",
	"void find_shorter(int);",
	"void iniglobals(int);",
	"void stopped(int);",
	"void wrapup(void);",
	"int *grab_ints(int);",
	"void ungrab_ints(int *, int);",
	0,
};

static const char *Tail[] = {
	"Trans *",
	"settr(	int t_id, int a, int b, int c, int d,",
	"	char *t, int g, int tpe0, int tpe1)",
	"{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));\n",
	"	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */",
	"	if (!g) tmp->atom |= 8;	/* no global references */",
	"	tmp->st    = b;",
	"	tmp->tpe[0] = tpe0;",
	"	tmp->tpe[1] = tpe1;",
	"	tmp->tp    = t;",
	"	tmp->t_id  = t_id;",
	"	tmp->forw  = c;",
	"	tmp->back  = d;",
	"	return tmp;",
	"}\n",
	"Trans *",
	"cpytr(Trans *a)",
	"{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));\n",
	"	int i;",
	"	tmp->atom  = a->atom;",
	"	tmp->st    = a->st;",
	"#ifdef HAS_UNLESS",
	"	tmp->e_trans = a->e_trans;",
	"	for (i = 0; i < HAS_UNLESS; i++)",
	"		tmp->escp[i] = a->escp[i];",
	"#endif",
	"	tmp->tpe[0] = a->tpe[0];",
	"	tmp->tpe[1] = a->tpe[1];",
	"	for (i = 0; i < 6; i++)",
	"	{	tmp->qu[i] = a->qu[i];",
	"		tmp->ty[i] = a->ty[i];",
	"	}",
	"	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);",
	"	strcpy(tmp->tp, a->tp);",
	"	tmp->t_id  = a->t_id;",
	"	tmp->forw  = a->forw;",
	"	tmp->back  = a->back;",
	"	return tmp;",
	"}\n",
	"#ifndef NOREDUCE",
	"int",
	"srinc_set(int n)",
	"{	if (n <= 2) return LOCAL;",
	"	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */",
	"	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */",
	"	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */",
	"	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */",
	"	if (n ==   5*DELTA) return GLOBAL;",
	"	if (n ==   6*DELTA) return TIMEOUT_F;",
	"	if (n ==   7*DELTA) return ALPHA_F;",
	"	Uerror(\"cannot happen srinc_class\");",
	"	return BAD;",
	"}",
	"int",
	"srunc(int n, int m)",
	"{	switch(m) {",
	"	case Q_FULL_F: return n-2;",
	"	case Q_EMPT_F: return n-2-DELTA;",
	"	case Q_EMPT_T: return n-2-2*DELTA;",
	"	case Q_FULL_T: return n-2-3*DELTA;",
	"	case ALPHA_F:",
	"	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */",
	"	}",
	"	Uerror(\"cannot happen srunc\");",
	"	return 0;",
	"}",
	"#endif",
	"int cnt;",
	"#ifdef HAS_UNLESS",
	"int",
	"isthere(Trans *a, int b)", /* is b already in a's list? */
	"{	Trans *t;",
	"	for (t = a; t; t = t->nxt)",
	"		if (t->t_id == b)",
	"			return 1;",
	"	return 0;",
	"}",
	"#endif",
	"#ifndef NOREDUCE",
	"int",
	"mark_safety(Trans *t) /* for conditional safety */",
	"{	int g = 0, i, j, k;",
	"",
	"	if (!t) return 0;",
	"	if (t->qu[0])",
	"		return (t->qu[1])?2:1;	/* marked */",
	"",
	"	for (i = 0; i < 2; i++)",
	"	{	j = srinc_set(t->tpe[i]);",
	"		if (j >= GLOBAL && j != ALPHA_F)",
	"			return -1;",
	"		if (j != LOCAL)",
	"		{	k = srunc(t->tpe[i], j);",
	"			if (g == 0",
	"			||  t->qu[0] != k",
	"			||  t->ty[0] != j)",
	"			{	t->qu[g] = k;",
	"				t->ty[g] = j;",
	"				g++;",
	"	}	}	}",
	"	return g;",
	"}",
	"#endif",
	"void",
	"retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])",
	"	/* process n, with m states, is=initial state */",
	"{	Trans *T0, *T1, *T2, *T3;",
	"	Trans *T4, *T5; /* t_reverse or has_unless */",
	"	int i;",
	"#if defined(HAS_UNLESS) || !defined(NOREDUCE)",
	"	int k;",
	"#endif",
	"#ifndef NOREDUCE",
	"	int g, h, j, aa;",
	"#endif",
	"#ifdef HAS_UNLESS",
	"	int p;",
	"#endif",
	"	if (state_tables >= 4)",
	"	{	printf(\"STEP 1 %%s\\n\", ",
	"			procname[n]);",
	"		for (i = 1; i < m; i++)",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"			crack(n, i, T0, srcln);",
	"		return;",
	"	}",
	"	do {",
	"		for (i = 1, cnt = 0; i < m; i++)",
	"		{	T2 = trans[n][i];",
	"			T1 = T2?T2->nxt:(Trans *)0;",
	"/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)",
	"/* choice in choice */	{	if (T0->st && trans[n][T0->st]",
	"				&&  trans[n][T0->st]->nxt)",
	"					break;",
	"			}",
	"#if 0",
	"		if (T0)",
	"		printf(\"\\tstate %%d / %%d: choice in choice\\n\",",
	"		i, T0->st);",
	"#endif",
	"			if (T0)",
	"			for (T0 = T1; T0; T0 = T0->nxt)",
	"			{	T3 = trans[n][T0->st];",
	"				if (!T3->nxt)",
	"				{	T2->nxt = cpytr(T0);",
	"					T2 = T2->nxt;",
	"					imed(T2, T0->st, n, i);",
	"					continue;",
	"				}",
	"				do {	T3 = T3->nxt;",
	"					T2->nxt = cpytr(T3);",
	"					T2 = T2->nxt;",
	"					imed(T2, T0->st, n, i);",
	"				} while (T3->nxt);",
	"				cnt++;",
	"			}",
	"		}",
	"	} while (cnt);",

	"	if (state_tables >= 3)",
	"	{	printf(\"STEP 2 %%s\\n\", ",
	"			procname[n]);",
	"		for (i = 1; i < m; i++)",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"			crack(n, i, T0, srcln);",
	"		return;",
	"	}",
	"	for (i = 1; i < m; i++)",
	"	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */",
	"		{	T1 = trans[n][i]->nxt;",
	"#if 0",
	"			printf(\"\\t\\tpull %%d (%%d) to %%d\\n\",",
	"			T1->st, T1->forw, i);",
	"#endif",		/* pull linenumber ref as well: */
	"			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */",
	"",
	"			if (!trans[n][T1->st]) continue;",
	"			T0 = cpytr(trans[n][T1->st]);",
	"			trans[n][i] = T0;",
	"			reach[T1->st] = 1;",
	"			imed(T0, T1->st, n, i);",
	"			for (T1 = T1->nxt; T1; T1 = T1->nxt)",
	"			{",
	"#if 0",
	"			printf(\"\\t\\tpull %%d (%%d) to %%d\\n\",",
	"				T1->st, T1->forw, i);",
	"#endif",
	"		/*		srcln[i] = srcln[T1->st];  gh: not useful */",
	"				if (!trans[n][T1->st]) continue;",
	"				T0->nxt = cpytr(trans[n][T1->st]);",
	"				T0 = T0->nxt;",
	"				reach[T1->st] = 1;",
	"				imed(T0, T1->st, n, i);",
	"	}	}	}",
	"	if (state_tables >= 2)",
	"	{	printf(\"STEP 3 %%s\\n\", ",
	"			procname[n]);",
	"		for (i = 1; i < m; i++)",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"			crack(n, i, T0, srcln);",
	"		return;",
	"	}",
	"#ifdef HAS_UNLESS",
	"	for (i = 1; i < m; i++)",
	"	{	if (!trans[n][i]) continue;",
	"		/* check for each state i if an",
	"		 * escape to some state p is defined",
	"		 * if so, copy and mark p's transitions",
	"		 * and prepend them to the transition-",
	"		 * list of state i",
	"		 */",
	"	 if (!like_java) /* the default */",
	"	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"		for (k = HAS_UNLESS-1; k >= 0; k--)",
	"		{	if (p = T0->escp[k])",
	"			for (T1 = trans[n][p]; T1; T1 = T1->nxt)",
	"			{	if (isthere(trans[n][i], T1->t_id))",
	"					continue;",
	"				T2 = cpytr(T1);",
	"				T2->e_trans = p;",
	"				T2->nxt = trans[n][i];",
	"				trans[n][i] = T2;",
	"		}	}",
	"	 } else /* outermost unless checked first */",
	"	 {	T4 = T3 = (Trans *) 0;",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"		for (k = HAS_UNLESS-1; k >= 0; k--)",
	"		{	if (p = T0->escp[k])",
	"			for (T1 = trans[n][p]; T1; T1 = T1->nxt)",
	"			{	if (isthere(trans[n][i], T1->t_id))",
	"					continue;",
	"				T2 = cpytr(T1);",
	"				T2->nxt = (Trans *) 0;",
	"				T2->e_trans = p;",
	"				if (T3)	T3->nxt = T2;",
	"				else	T4 = T2;",
	"				T3 = T2;",
	"		}	}",
	"		if (T4)",
	"		{	T3->nxt = trans[n][i];",
	"			trans[n][i] = T4;",
	"		}",
	"	 }",
	"	}",
	"#endif",

	"#ifndef NOREDUCE",
	"	for (i = 1; i < m; i++)",
	"	{	if (a_cycles)",
	"		{ /* moves through these states are visible */",
	"	#if PROG_LAB>0 && defined(HAS_NP)",
	"			if (progstate[n][i])",
	"				goto degrade;",
	"			for (T1 = trans[n][i]; T1; T1 = T1->nxt)",
	"				if (progstate[n][T1->st])",
	"					goto degrade;",
	"	#endif",
	"			if (accpstate[n][i] || visstate[n][i])",
	"				goto degrade;",
	"			for (T1 = trans[n][i]; T1; T1 = T1->nxt)",
	"				if (accpstate[n][T1->st])",
	"					goto degrade;",
	"		}",
	"		T1 = trans[n][i];",
	"		if (!T1) continue;",
	"		g = mark_safety(T1);	/* V3.3.1 */",
	"		if (g < 0) goto degrade; /* global */",
	"		/* check if mixing of guards preserves reduction */",
	"		if (T1->nxt)",
	"		{	k = 0;",
	"			for (T0 = T1; T0; T0 = T0->nxt)",
	"			{	if (!(T0->atom&8))",
	"					goto degrade;",
	"				for (aa = 0; aa < 2; aa++)",
	"				{	j = srinc_set(T0->tpe[aa]);",
	"					if (j >= GLOBAL && j != ALPHA_F)",
	"						goto degrade;",
	"					if (T0->tpe[aa]",
	"					&&  T0->tpe[aa]",
	"					!=  T1->tpe[0])",
	"						k = 1;",
	"			}	}",
	"			/* g = 0;	V3.3.1 */",
	"			if (k)	/* non-uniform selection */",
	"			for (T0 = T1; T0; T0 = T0->nxt)",
	"			for (aa = 0; aa < 2; aa++)",
	"			{	j = srinc_set(T0->tpe[aa]);",
	"				if (j != LOCAL)",
	"				{	k = srunc(T0->tpe[aa], j);",
	"					for (h = 0; h < 6; h++)",
	"						if (T1->qu[h] == k",
	"						&&  T1->ty[h] == j)",
	"							break;",
	"					if (h >= 6)",
	"					{	T1->qu[g%%6] = k;",
	"						T1->ty[g%%6] = j;",
	"						g++;",
	"			}	}	}",
	"			if (g > 6)",
	"			{	T1->qu[0] = 0;	/* turn it off */",
	"				printf(\"pan: warning, line %%d, \",",
	"					srcln[i]);",
	"			 	printf(\"too many stmnt types (%%d)\",",
	"					g);",
	"			  	printf(\" in selection\\n\");",
	"			  goto degrade;",
	"			}",
	"		}",
	"		/* mark all options global if >=1 is global */",
	"		for (T1 = trans[n][i]; T1; T1 = T1->nxt)",
	"			if (!(T1->atom&8)) break;",
	"		if (T1)",
	"degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)",
	"			T1->atom &= ~8;	/* mark as unsafe */",

	"		/* can only mix 'r's or 's's if on same chan */",
	"		/* and not mixed with other local operations */",
	"		T1 = trans[n][i];",

	"		if (!T1 || T1->qu[0]) continue;",

	"		j = T1->tpe[0];",
	"		if (T1->nxt && T1->atom&8)",
	"		{ if (j == 5*DELTA)",
	"		  {	printf(\"warning: line %%d \", srcln[i]);",
	"			printf(\"mixed condition \");",
	"			printf(\"(defeats reduction)\\n\");",
	"			goto degrade;",
	"		  }",
	"		  for (T0 = T1; T0; T0 = T0->nxt)",
	"		  for (aa = 0; aa < 2; aa++)",
	"		  if  (T0->tpe[aa] && T0->tpe[aa] != j)",
	"		  {	printf(\"warning: line %%d \", srcln[i]);",
	"			printf(\"[%%d-%%d] mixed %%stion \",",
	"				T0->tpe[aa], j, ",
	"				(j==5*DELTA)?\"condi\":\"selec\");",
	"			printf(\"(defeats reduction)\\n\");",
	"			printf(\"	'%%s' <-> '%%s'\\n\",",
	"				T1->tp, T0->tp);",
	"			goto degrade;",
	"		} }",
	"	}",
	"#endif",
	"	for (i = 1; i < m; i++)",	/* R */
	"	{	T2 = trans[n][i];",
	"		if (!T2",
	"		||  T2->nxt",
	"		||  strncmp(T2->tp, \".(goto)\", 7)",
	"		||  !stopstate[n][i])",
	"			continue;",
	"		stopstate[n][T2->st] = 1;",
	"	}",
	"	if (state_tables && !verbose)",
	"	{	if (dodot)",
	"		{	char buf[256], *q = buf, *p = procname[n];",
	"			while (*p != '\\0')",
	"			{	if (*p != ':')",
	"				{	*q++ = *p;",
	"				}",
	"				p++;",
	"			}",
	"			*q = '\\0';",
	"			printf(\"digraph \");",
	"			switch (Btypes[n]) {",
	"			case I_PROC:  printf(\"init {\\n\"); break;",
	"			case N_CLAIM: printf(\"claim_%%s {\\n\", buf); break;",
	"			case E_TRACE: printf(\"notrace {\\n\"); break;",
	"			case N_TRACE: printf(\"trace {\\n\"); break;",
	"			default:      printf(\"p_%%s {\\n\", buf); break;",
	"			}",
	"			printf(\"size=\\\"8,10\\\";\\n\");",
	"			printf(\"  GT [shape=box,style=dotted,label=\\\"%%s\\\"];\\n\", buf);",
	"			printf(\"  GT -> S%%d;\\n\", is);",
	"		} else",
	"		{	switch (Btypes[n]) {",
	"			case I_PROC:  printf(\"init\\n\"); break;",
	"			case N_CLAIM: printf(\"claim %%s\\n\", procname[n]); break;",
	"			case E_TRACE: printf(\"notrace assertion\\n\"); break;",
	"			case N_TRACE: printf(\"trace assertion\\n\"); break;",
	"			default:      printf(\"proctype %%s\\n\", procname[n]); break;",
	"		}	}",
	"		for (i = 1; i < m; i++)",
	"		{	reach[i] = 1;",
	"		}",
	"		tagtable(n, m, is, srcln, reach);",
	"		if (dodot) printf(\"}\\n\");",
	"	} else",
	"	for (i = 1; i < m; i++)",
	"	{	int nrelse;",
	"		if (Btypes[n] != N_CLAIM)",
	"		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"			{	if (T0->st == i",
	"				&& strcmp(T0->tp, \"(1)\") == 0)",
	"				{	printf(\"error: proctype '%%s' \",",
	"						procname[n]);",
	"		  			printf(\"line %%d, state %%d: has un\",",
	"						srcln[i], i);",
	"					printf(\"conditional self-loop\\n\");",
	"					pan_exit(1);",
	"		}	}	}",
	"		nrelse = 0;",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"		{	if (strcmp(T0->tp, \"else\") == 0)",
	"				nrelse++;",
	"		}",
	"		if (nrelse > 1)",
	"		{	printf(\"error: proctype '%%s' state\",",
	"				procname[n]);",
	"		  	printf(\" %%d, inherits %%d\", i, nrelse);",
	"		  	printf(\" 'else' stmnts\\n\");",
	"			pan_exit(1);",
	"	}	}",
	"#if !defined(LOOPSTATE) && !defined(BFS_PAR)",
	"	if (state_tables)",
	"#endif",
	"	do_dfs(n, m, is, srcln, reach, lpstate);",
	"",
	"	if (!t_reverse)",
	"	{	return;",
	"	}",
	"	/* process n, with m states, is=initial state -- reverse list */",
	"	if (!state_tables && Btypes[n] != N_CLAIM)",
	"	{	for (i = 1; i < m; i++)", /* for each state */
	"		{	Trans *Tx = (Trans *) 0; /* list of escapes */",
	"			Trans *Ty = (Trans *) 0; /* its tail element */",
	"			T1 = (Trans *) 0; /* reversed list */",
	"			T2 = (Trans *) 0; /* its tail */",
	"			T3 = (Trans *) 0; /* remembers possible 'else' */",
	"",
	"			/* find unless-escapes, they should go first */",
	"			T4 = T5 = T0 = trans[n][i];",
	"	#ifdef HAS_UNLESS",
	"			while (T4 && T4->e_trans) /* escapes are first in orig list */",
	"			{	T5 = T4;	  /* remember predecessor */",
	"				T4 = T4->nxt;",
	"			}",
	"	#endif",
	"			/* T4 points to first non-escape, T5 to its parent, T0 to original list */",
	"			if (T4 != T0)		 /* there was at least one escape */",	
	"			{	T3 = T5->nxt;		 /* start of non-escapes */",
	"				T5->nxt = (Trans *) 0;	 /* separate */",
	"				Tx = T0;		 /* start of the escapes */",
	"				Ty = T5;		 /* its tail */",
	"				T0 = T3;		 /* the rest, to be reversed */",
	"			}",
	"			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */",
	"",
	"			/* first tail-add non-escape transitions, reversed */",
	"			T3 = (Trans *) 0;", /* remember a possible 'else' */
	"			for (T5 = T0; T5; T5 = T4)",
	"			{	T4 = T5->nxt;",
	"	#ifdef HAS_UNLESS",
	"				if (T5->e_trans)",
	"				{	printf(\"error: cannot happen!\\n\");",
	"					continue;",
	"				}",
	"	#endif",
	"				if (strcmp(T5->tp, \"else\") == 0)",
	"				{	T3 = T5;",
	"					T5->nxt = (Trans *) 0;",
	"				} else",
	"				{	T5->nxt = T1;",
	"					if (!T1) { T2 = T5; }",
	"					T1 = T5;",
	"			}	}",
	"			/* T3 points to a possible else, which is removed from the list */",
	"			/* T1 points to the reversed list so far (without escapes) */",
	"			/* T2 points to the tail element -- where the else should go */",
	"			if (T2 && T3)",
	"			{	T2->nxt = T3;	/* add else */",
	"			} else",
	"			{	if (T3) /* there was an else, but there's no tail */",
	"				{	if (!T1)	/* and no reversed list */",
	"					{	T1 = T3; /* odd, but possible */",
	"					} else		/* even stranger */",
	"					{	T1->nxt = T3;",
	"			}	}	}",
	"",
	"			/* add in the escapes, to that they appear at the front */",
	"			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }",
	"",
	"			trans[n][i] = T1;",
	"			/* reversed, with escapes first and else last */",
	"	}	}",
	"	if (state_tables && verbose)",
	"	{	printf(\"FINAL proctype %%s\\n\", ",
	"			procname[n]);",
	"		for (i = 1; i < m; i++)",
	"		for (T0 = trans[n][i]; T0; T0 = T0->nxt)",
	"			crack(n, i, T0, srcln);",
	"	}",
	"}",
	"void",
	"imed(Trans *T, int v, int n, int j)	/* set intermediate state */",
	"{	progstate[n][T->st] |= progstate[n][v];",
	"	accpstate[n][T->st] |= accpstate[n][v];",
	"	stopstate[n][T->st] |= stopstate[n][v];",
	"	mapstate[n][j] = T->st;",
	"}",
	"void",
	"tagtable(int n, int m, int is, short srcln[], uchar reach[])",
	"{	Trans *z;\n",
	"	if (is >= m || !trans[n][is]",
	"	||  is <= 0 || reach[is] == 0)",
	"		return;",
	"	reach[is] = 0;",
	"	if (state_tables)",
	"	for (z = trans[n][is]; z; z = z->nxt)",
	"	{	if (dodot)",
	"			dot_crack(n, is, z);",
	"		else",
	"			crack(n, is, z, srcln);",
	"	}",
	"",
	"	for (z = trans[n][is]; z; z = z->nxt)",
	"	{",
	"#ifdef HAS_UNLESS",
	"		int i, j;",
	"#endif",
	"		tagtable(n, m, z->st, srcln, reach);",
	"#ifdef HAS_UNLESS",
	"		for (i = 0; i < HAS_UNLESS; i++)",
	"		{	j = trans[n][is]->escp[i];",
	"			if (!j) break;",
	"			tagtable(n, m, j, srcln, reach);",
	"		}",
	"#endif",
	"	}",
	"}",
	"",
	"extern Trans *t_id_lkup[];",	/* needed by BFS_PAR */
	"",
	"void",
	"dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])",
	"{	Trans *z;\n",
	"	if (is >= m || is <= 0 || !trans[n][is])",
	"		return;",
	"	if ((reach[is] & (4|8|16)) != 0)",
	"	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */",
	"		{	lpstate[is] = 1;",
	"			reach[is] |= 8; /* recorded */",
	"			if (state_tables && verbose)",
	"			{	printf(\"state %%d line %%d is a loopstate\\n\", is, srcln[is]);",
	"		}	}",
	"		return;",
	"	}",
	"	reach[is] |= (4|16);	/* visited | onstack */",
	"	for (z = trans[n][is]; z; z = z->nxt)",
	"	{	t_id_lkup[z->t_id] = z;",	/* needed by BFS_PAR */
	"#ifdef HAS_UNLESS",
	"		int i, j;",
	"#endif",
	"		dfs_table(n, m, z->st, srcln, reach, lpstate);",
	"#ifdef HAS_UNLESS",
	"		for (i = 0; i < HAS_UNLESS; i++)",
	"		{	j = trans[n][is]->escp[i];",
	"			if (!j) break;",
	"			dfs_table(n, m, j, srcln, reach, lpstate);",
	"		}",
	"#endif",
	"	}",
	"	reach[is] &= ~16; /* no longer on stack */",
	"}",
	"void",
	"do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])",
	"{	int i;",
	"	dfs_table(n, m, is, srcln, reach, lpstate);",
	"	for (i = 0; i < m; i++)",
	"		reach[i] &= ~(4|8|16);",
	"}",
	"void",
	"crack(int n, int j, Trans *z, short srcln[])",
	"{	int i;\n",
	"	if (!z) return;",
	"	printf(\"\tstate %%3d -(tr %%3d)-> state %%3d  \",",
	"		j, z->forw, z->st);",
	"	printf(\"[id %%3d tp %%3d\", z->t_id, z->tpe[0]);",
	"	if (z->tpe[1]) printf(\",%%d\", z->tpe[1]);",
	"#ifdef HAS_UNLESS",
	"	if (z->e_trans)",
	"		printf(\" org %%3d\", z->e_trans);",
	"	else if (state_tables >= 2)",
	"	for (i = 0; i < HAS_UNLESS; i++)",
	"	{	if (!z->escp[i]) break;",
	"		printf(\" esc %%d\", z->escp[i]);",
	"	}",
	"#endif",
	"	printf(\"]\");",
	"	printf(\" [%%s%%s%%s%%s%%s] %%s:%%d => \",",
	"		z->atom&6?\"A\":z->atom&32?\"D\":\"-\",",
	"		accpstate[n][j]?\"a\" :\"-\",",
	"		stopstate[n][j]?\"e\" : \"-\",",
	"		progstate[n][j]?\"p\" : \"-\",",
	"		z->atom & 8 ?\"L\":\"G\",",
	"		PanSource, srcln[j]);",
	"	for (i = 0; z->tp[i]; i++)",
	"		if (z->tp[i] == \'\\n\')",
	"			printf(\"\\\\n\");",
	"		else",
	"			putchar(z->tp[i]);",
	"	if (verbose && z->qu[0])",
	"	{	printf(\"\\t[\");",
	"		for (i = 0; i < 6; i++)",
	"			if (z->qu[i])",
	"				printf(\"(%%d,%%d)\",",
	"				z->qu[i], z->ty[i]);",
	"		printf(\"]\");",
	"	}",
	"	printf(\"\\n\");",
	"	fflush(stdout);",
	"}",
	"/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */",
	"void",
	"dot_crack(int n, int j, Trans *z)",
	"{	int i;\n",
	"	if (!z) return;",
	"	printf(\"\tS%%d -> S%%d  [color=black\", j, z->st);",
	"",
	"	if (z->atom&6) printf(\",style=dashed\");",		/* A */
	"	else if (z->atom&32) printf(\",style=dotted\");",	/* D */
	"	else if (z->atom&8) printf(\",style=solid\");",		/* L */
	"	else printf(\",style=bold\");",				/* G */
		/* other styles: filled dotted */
	"",
	"	printf(\",label=\\\"\");",
	"	for (i = 0; z->tp[i]; i++)",
	"	{	if (z->tp[i] == \'\\\\\'",
	"		&&  z->tp[i+1] == \'n\')",
	"		{	i++; printf(\" \");",
	"		} else",
	"		{	putchar(z->tp[i]);",
	"	}	}",
	"	printf(\"\\\"];\\n\");",
	"	if (accpstate[n][j]) printf(\"  S%%d [color=red,style=bold];\\n\", j);",
	"	else if (progstate[n][j]) printf(\"  S%%d [color=green,style=bold];\\n\", j);",
	"	if (stopstate[n][j]) printf(\"  S%%d [color=blue,style=bold,shape=box];\\n\", j);",
	"}",
	"",
	"#ifdef VAR_RANGES",
	"#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */",
	"",
	"typedef struct Vr_Ptr {",
	"	char	*nm;",
	"	uchar	vals[BYTESIZE];",
	"	struct Vr_Ptr *nxt;",
	"} Vr_Ptr;",
	"Vr_Ptr *ranges = (Vr_Ptr *) 0;",
	"",
	"void",
	"logval(char *s, int v)",
	"{	Vr_Ptr *tmp;",
	"",
	"	if (v<0 || v > 255) return;",
	"	for (tmp = ranges; tmp; tmp = tmp->nxt)",
	"		if (!strcmp(tmp->nm, s))",
	"			goto found;",
	"	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));",
	"	tmp->nxt = ranges;",
	"	ranges = tmp;",
	"	tmp->nm = s;",
	"found:",
	"	tmp->vals[(v)/8] |= 1<<((v)%%8);",
	"}",
	"",
	"void",
	"dumpval(uchar X[], int range)",
	"{	int w, x, i, j = -1;",
	"",
	"	for (w = i = 0; w < range; w++)",
	"	for (x = 0; x < 8; x++, i++)",
	"	{",
	"from:		if ((X[w] & (1<<x)))",
	"		{	printf(\"%%d\", i);",
	"			j = i;",
	"			goto upto;",
	"	}	}",
	"	return;",
	"	for (w = 0; w < range; w++)",
	"	for (x = 0; x < 8; x++, i++)",
	"	{",
	"upto:		if (!(X[w] & (1<<x)))",
	"		{	if (i-1 == j)",
	"				printf(\", \");",
	"			else",
	"				printf(\"-%%d, \", i-1);",
	"			goto from;",
	"	}	}",
	"	if (j >= 0 && j != 255)",
	"		printf(\"-255\");",
	"}",
	"",
	"void",
	"dumpranges(void)",
	"{	Vr_Ptr *tmp;",
	"	printf(\"\\nValues assigned within \");",
	"	printf(\"interval [0..255]:\\n\");",
	"	for (tmp = ranges; tmp; tmp = tmp->nxt)",
	"	{	printf(\"\\t%%s\\t: \", tmp->nm);",
	"		dumpval(tmp->vals, BYTESIZE);",
	"		printf(\"\\n\");",
	"	}",
	"}",
	"#endif",
	0,
};
