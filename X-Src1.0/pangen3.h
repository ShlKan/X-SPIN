/***** spin: pangen3.h *****/

/* Copyright (c) 1989-2003 by Lucent Technologies, Bell Laboratories.     */
/* All Rights Reserved.  This software is for educational purposes only.  */
/* No guarantee whatsoever is expressed or implied by the distribution of */
/* this code.  Permission is given to distribute this code provided that  */
/* this introductory message is not removed and no monies are exchanged.  */
/* Software written by Gerard J. Holzmann.  For tool documentation see:   */
/*             http://spinroot.com/                                       */
/* Send all bug-reports and/or questions to: bugs@spinroot.com            */
/* (c) 2007: small additions for V5.0 to support multi-core verifications */

static const char *Head0[] = {
	"#if defined(BFS) && defined(REACH)",
	"	#undef REACH",	/* redundant with bfs */
	"#endif",
	"#ifdef VERI",
	"	#define BASE	1",
	"#else",
	"	#define BASE	0",
	"#endif",
	"typedef struct Trans {",
	"	short atom;	/* if &2 = atomic trans; if &8 local */",
	"#ifdef HAS_UNLESS",
	"	short escp[HAS_UNLESS];	/* lists the escape states */",
	"	short e_trans;	/* if set, this is an escp-trans */",
	"#endif",
	"	short tpe[2];	/* class of operation (for reduction) */",
	"	short qu[6];	/* for conditional selections: qid's  */",
	"	uchar ty[6];	/* ditto: type's */",
	"#ifdef NIBIS",
	"	short om;	/* completion status of preselects */",
	"#endif",
	"	char *tp;	/* src txt of statement */",
	"	int st;		/* the nextstate */",
	"	int t_id;	/* transition id, unique within proc */",
	"	int forw;	/* index forward transition */",
	"	int back;	/* index return  transition */",
	"	struct Trans *nxt;",
	"} Trans;\n",

	"#ifdef TRIX",
	"	#define qptr(x)	(channels[x]->body)",
	"	#define pptr(x)	(processes[x]->body)",
	"#else",
	"	#define qptr(x)	(((uchar *)&now)+(int)q_offset[x])",
	"	#define pptr(x)	(((uchar *)&now)+(int)proc_offset[x])",
/*	"	#define Pptr(x)	((proc_offset[x])?pptr(x):noptr)",	*/
	"#endif",
	"extern uchar *Pptr(int);",
	"extern uchar *Qptr(int);",

	"#define q_sz(x)	(((Q0 *)qptr(x))->Qlen)",
	"",
	"#ifdef TRIX",
	"	#ifdef VECTORSZ",
	"		#undef VECTORSZ",	/* backward compatibility */
	"	#endif",
	"	#if WS==4",
	"		#define VECTORSZ	2056	/* ((MAXPROC+MAXQ+4)*sizeof(uchar *)) */",
	"	#else",
	"		#define VECTORSZ	4112	/* the formula causes probs in preprocessing */",
	"	#endif",
	"#else",
	"	#ifndef VECTORSZ",
	"		#define VECTORSZ	1024	/* sv size in bytes */",
	"	#endif",
	"#endif\n",
	"#define MAXQ   	255",
	"#define MAXPROC	255",
	"",
	0,
};

static const char *Header[] = {
	"#ifdef VERBOSE",
	"	#ifndef CHECK",
	"		#define CHECK",
	"	#endif",
	"	#ifndef DEBUG",
	"		#define DEBUG",
	"	#endif",
	"#endif",
	"#ifdef SAFETY",
	"	#ifndef NOFAIR",
	"		#define NOFAIR",
	"	#endif",
	"#endif",
#if 0
                 NOREDUCE BITSTATE SAFETY  MA   WS>4
     CNTRSTACK:     -        +       +     d     -
     FULLSTACK:     +        d       -     -     d
                    -        +       d     d     d
                    -        +       +     d     +
                    -        -       d     d     d
     Neither:       +        d       +     d     d
                    +        d       d     +     d
#endif
	"#ifdef NOREDUCE",
	"	#ifndef XUSAFE",
	"		#define XUSAFE",
	"	#endif",
	"	#if !defined(SAFETY) && !defined(MA)",
	"		#define FULLSTACK",		/* => NOREDUCE && !SAFETY && !MA */
	"	#endif",
	"#else",
	"	#ifdef BITSTATE",
	"		#if defined(SAFETY) && WS<=4",
	"			#define CNTRSTACK",	/* => !NOREDUCE && BITSTATE && SAFETY && WS<=4 */
	"		#else",
	"			#define FULLSTACK",	/* => !NOREDUCE && BITSTATE && (!SAFETY || WS>4) */
	"		#endif",
	"	#else",
	"		#define FULLSTACK",		/* => !NOREDUCE && !BITSTATE */
	"	#endif",
	"#endif",
	"#ifdef BITSTATE",
	"	#ifndef NOCOMP",
	"		#define NOCOMP",
	"	#endif",
	"	#if !defined(LC) && defined(SC)",
	"		#define LC",
	"	#endif",
	"#endif",
	"#if defined(COLLAPSE2) || defined(COLLAPSE3) || defined(COLLAPSE4)",
	"	/* accept the above for backward compatibility */",
	"	#define COLLAPSE",
	"#endif",
	"#ifdef HC",
	"	#undef HC",
	"	#define HC4",
	"#endif",
	"#if defined(HC0) || defined(HC1) || defined(HC2) || defined(HC3) || defined(HC4)",
	"	#define HC	4",	/* 2x32 bits */
	"#endif",	/* really only one hashcompact mode, not 5 */
	"",
	"typedef struct _Stack  {	 /* for queues and processes */",
	"#if VECTORSZ>32000",
	"	int o_delta;",
	"	#ifndef TRIX",
	"		int o_offset;",
	"		int o_skip;",
	"	#endif",
	"	int o_delqs;",
	"#else",
	"	short o_delta;",
	"	#ifndef TRIX",
	"		short o_offset;",
	"		short o_skip;",
	"	#endif",
	"	short o_delqs;",
	"#endif",
	"	short o_boq;",
	"#ifdef TRIX",
	"	short parent;",
	"	char *b_ptr;",	/* used in delq/q_restor and delproc/p_restor */
	"#else",
	"	char *body;",	/* full copy of state vector in non-trix mode */
	"#endif",
	"#ifndef XUSAFE",
	"	char *o_name;",
	"#endif",
	"	struct _Stack *nxt;",
	"	struct _Stack *lst;",
	"} _Stack;\n",
	"typedef struct Svtack { /* for complete state vector */",
	"#if VECTORSZ>32000",
	"	int o_delta;",
	"	int m_delta;",
	"#else",
	"	short o_delta;	 /* current size of frame */",
	"	short m_delta;	 /* maximum size of frame */",
	"#endif",
	"#if SYNC",
	"	short o_boq;",
	"#endif",
	0,
};

static const char *Header0[] = {
	"	char *body;",
	"	struct Svtack *nxt;",
	"	struct Svtack *lst;",
	"} Svtack;\n",
	0,
};

static const char *Head1[] = {
	"typedef struct State {",
	"	uchar _nr_pr;",
	"	uchar _nr_qs;",
	"	uchar   _a_t;	/* cycle detection */",
#if 0
	in _a_t: bits 0,4, and 5 =(1|16|32) are set during a 2nd dfs
	bit 1 is used as the A-bit for fairness
	bit 7 (128) is the proviso bit, for reduced 2nd dfs (acceptance)
#endif
	"#ifndef NOFAIR",
	"	uchar   _cnt[NFAIR];	/* counters, weak fairness */",
	"#endif",

	"#ifndef NOVSZ",
#ifdef SOLARIS
		"#if 0",
		/* v3.4
		 * noticed alignment problems with some Solaris
		 * compilers, if widest field isn't wordsized
		 */
#else
		"#if VECTORSZ<65536",
#endif
		"	unsigned short _vsz;",
		"#else",
		"	ulong  _vsz;",
		"#endif",
	"#endif",

	"#ifdef HAS_LAST",	/* cannot go before _cnt - see h_store() */
	"	uchar  _last;	/* pid executed in last step */",
	"#endif",

	"#if defined(BITSTATE) && defined(BCS) && defined(STORE_CTX)",
	"	uchar  _ctx;	/* nr of context switches so far */",
	"#endif",
	"#if defined(BFS_PAR) && defined(L_BOUND)",
	"	uchar  _l_bnd;	/* bounded liveness */",
	"	uchar *_l_sds;	/* seed state */",
	"#endif",
	"#ifdef EVENT_TRACE",
	"	#if nstates_event<256",
	"		uchar _event;",
	"	#else",
	"		unsigned short _event;",
	"	#endif",
	"#endif",
	0,
};

static const char *Addp0[] = {
	/* addproc(....parlist... */ ")",
	"{	int j, h = now._nr_pr;",
	"#ifndef NOCOMP",
	"	int k;",
	"#endif",
	"	uchar *o_this = this;\n",
	"#ifndef INLINE",
	"	if (TstOnly) return (h < MAXPROC);",
	"#endif",
	"#ifndef NOBOUNDCHECK",
	"	/* redefine Index only within this procedure */",
	"	#undef Index",
	"	#define Index(x, y)	Boundcheck(x, y, 0, 0, 0)",
	"#endif",
	"	if (h >= MAXPROC)",
	"		Uerror(\"too many processes\");",
	"#ifdef V_TRIX",
	"	printf(\"%%4d: add process %%d\\n\", depth, h);",
	"#endif",
	"	switch (n) {",
	"	case 0: j = sizeof(P0); break;",
	0,
};

static const char *Addp1[] = {
	"	default: Uerror(\"bad proc - addproc\");",
	"	}",
	"	#ifdef BFS_PAR",
	"		bfs_prepmask(1);	/* addproc */",
	"	#endif",

	"#ifdef TRIX",
	"	vsize += sizeof(H_el *);",
	"#else",
	"	if (vsize%%WS)",
	"		proc_skip[h] = WS-(vsize%%WS);",
	"	else",
	"		proc_skip[h] = 0;",
	"	#if !defined(NOCOMP) && !defined(HC)",
	"		for (k = vsize + (int) proc_skip[h]; k > vsize; k--)",
	"			Mask[k-1] = 1; /* align */",
	"	#endif",
	"	vsize += (int) proc_skip[h];",
	"	proc_offset[h] = vsize;",
	"	vsize += j;",
	"	#if defined(SVDUMP) && defined(VERBOSE)",
	"	if (vprefix > 0)",
	"	{	int dummy = 0;",
	"		write(svfd, (uchar *) &dummy, sizeof(int)); /* mark */",
	"		write(svfd, (uchar *) &h, sizeof(int));",
	"		write(svfd, (uchar *) &n, sizeof(int));",
	"	#if VECTORSZ>32000",
	"		write(svfd, (uchar *) &proc_offset[h], sizeof(int));",
	"		write(svfd, (uchar *) &now, vprefix-4*sizeof(int)); /* padd */",
	"	#else",
	"		write(svfd, (uchar *) &proc_offset[h], sizeof(short));",
	"		write(svfd, (uchar *) &now, vprefix-3*sizeof(int)-sizeof(short)); /* padd */",
	"	#endif",
	"	}",
	"	#endif",
	"#endif",

	"	now._nr_pr += 1;",
	"#if defined(BCS) && defined(CONSERVATIVE)",
	"	if (now._nr_pr >= CONSERVATIVE*8)",
	"	{	printf(\"pan: error: too many processes -- recompile with \");",
	"		printf(\"-DCONSERVATIVE=%%d\\n\", CONSERVATIVE+1);",
	"		pan_exit(1);",
	"	}",
	"#endif",
	"	if (fairness && ((int) now._nr_pr + 1 >= (8*NFAIR)/2))",
	"	{	printf(\"pan: error: too many processes -- current\");",
	"		printf(\" max is %%d procs (-DNFAIR=%%d)\\n\",",
	"			(8*NFAIR)/2 - 2, NFAIR);",
	"		printf(\"\\trecompile with -DNFAIR=%%d\\n\",",
	"			NFAIR+1);",
	"		pan_exit(1);",
	"	}",
	"#ifndef NOVSZ",
	"	now._vsz = vsize;",
	"#endif",
	"	hmax = max(hmax, vsize);",

	"#ifdef TRIX",
	"	#ifndef BFS",
	"		if (freebodies)",
	"		{	processes[h] = freebodies;",
	"			freebodies = freebodies->nxt;",
	"		} else",
	"		{	processes[h] = (TRIX_v6 *) emalloc(sizeof(TRIX_v6));",
	"			processes[h]->body = (uchar *) emalloc(Maxbody * sizeof(char));",
	"		}",
	"		processes[h]->modified = 1;	/* addproc */",
	"	#endif",
	"	processes[h]->psize = j;",
	"	processes[h]->parent_pid = calling_pid;",
	"	processes[h]->nxt = (TRIX_v6 *) 0;",
	"#else",
	"	#if !defined(NOCOMP) && !defined(HC)",
	"		for (k = 1; k <= Air[n]; k++)",
	"			Mask[vsize - k] = 1; /* pad */",
	"		Mask[vsize-j] = 1; /* _pid */",
	"	#endif",
	"	#ifdef BFS_PAR",
	"		bfs_fixmask(1);	/* addproc */",
	"	#endif",
	"	if (vsize >= VECTORSZ)",
	"	{	printf(\"pan: error, VECTORSZ too small, recompile pan.c\");",
	"		printf(\" with -DVECTORSZ=N with N>%%d\\n\", (int) vsize);",
	"		Uerror(\"aborting\");",
	"	}",
	"#endif",

	"	memset((char *)pptr(h), 0, j);",
	"	this = pptr(h);",
	"	if (BASE > 0 && h > 0)",
	"	{	((P0 *)this)->_pid = h-BASE;",
	"	} else",
	"	{	((P0 *)this)->_pid = h;",
	"	}",
	"	switch (n) {",
	0,
};

static const char *Addq0[] = {
	"",
	"int",
	"addqueue(int calling_pid, int n, int is_rv)",
	"{	int j=0, i = now._nr_qs;",
	"#if !defined(NOCOMP) && !defined(TRIX)",
	"	int k;",
	"#endif",
	"	if (i >= MAXQ)",
	"		Uerror(\"too many queues\");",
	"#ifdef V_TRIX",
	"	printf(\"%%4d: add queue %%d\\n\", depth, i);",
	"#endif",
	"	switch (n) {",
	0,
};

static const char *Addq1[] = {
	"	default: Uerror(\"bad queue - addqueue\");",
	"	}",
	"	#ifdef BFS_PAR",
	"		bfs_prepmask(2);	/* addqueue */",
	"	#endif",

	"#ifdef TRIX",
	"	vsize += sizeof(H_el *);",
	"#else",
	"	if (vsize%%WS)",
	"		q_skip[i] = WS-(vsize%%WS);",
	"	else",
	"		q_skip[i] = 0;",
	"	#if !defined(NOCOMP) && !defined(HC)",
	"		k = vsize;",
	"		#ifndef BFS",
	"			if (is_rv) k += j;",
	"		#endif",
	"		for (k += (int) q_skip[i]; k > vsize; k--)",
	"			Mask[k-1] = 1;",
	"	#endif",
	"	vsize += (int) q_skip[i];",
	"	q_offset[i] = vsize;",
	"	vsize += j;",
	"	#ifdef BFS_PAR",
	"		bfs_fixmask(2);	/* addqueue */",
	"	#endif",
	"#endif",

	"	now._nr_qs += 1;",
	"#ifndef NOVSZ",
	"	now._vsz = vsize;",
	"#endif",
	"	hmax = max(hmax, vsize);",

	"#ifdef TRIX",
	"	#ifndef BFS",
	"		if (freebodies)",
	"		{	channels[i] = freebodies;",
	"			freebodies = freebodies->nxt;",
	"		} else",
	"		{	channels[i] = (TRIX_v6 *) emalloc(sizeof(TRIX_v6));",
	"			channels[i]->body = (uchar *) emalloc(Maxbody * sizeof(char));",
	"		}",
	"		channels[i]->modified = 1;	/* addq */",
	"	#endif",
	"	channels[i]->psize = j;",
	"	channels[i]->parent_pid = calling_pid;",
	"	channels[i]->nxt = (TRIX_v6 *) 0;",
	"#else",
	"	if (vsize >= VECTORSZ)",
	"		Uerror(\"VECTORSZ is too small, edit pan.h\");",
	"#endif",

	"	if (j > 0)", /* zero if there are no queues */
	"	{	memset((char *)qptr(i), 0, j);",
	"	}",
	"	((Q0 *)qptr(i))->_t = n;",
	"	return i+1;",
	"}\n",
	0,
};

static const char *Addq11[] = {
	"{	int j; uchar *z;\n",
	"#ifdef HAS_SORTED",
	"	int k;",
	"#endif",
	"	if (!into--)",
	"	uerror(\"ref to uninitialized chan name (sending)\");",
	"	if (into >= (int) now._nr_qs || into < 0)",
	"		Uerror(\"qsend bad queue#\");",
	"#if defined(TRIX) && !defined(BFS)",
	"	#ifndef TRIX_ORIG",
	"		(trpt+1)->q_bup = now._ids_[now._nr_pr+into];",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d s save %%p from %%d\\n\",",
	"			depth, into, (trpt+1)->q_bup, now._nr_pr+into);",
	"		#endif",
	"	#endif",
	"	channels[into]->modified = 1;	/* qsend */",
	"	#ifdef V_TRIX",
	"		printf(\"%%4d: channel %%d modified\\n\", depth, into);",
	"	#endif",
	"#endif",
	"	z = qptr(into);",
	"	j = ((Q0 *)qptr(into))->Qlen;",
	"	switch (((Q0 *)qptr(into))->_t) {",
	0,
};

static const char *Addq2[] = {
	"	case 0: printf(\"queue %%d was deleted\\n\", into+1);",
	"	default: Uerror(\"bad queue - qsend\");",
	"	}",
	"#ifdef EVENT_TRACE",
	"	if (in_s_scope(into+1))",
	"		require('s', into);",
	"#endif",
	"}",
	"#endif\n",
	"#if SYNC",
	"int",
	"q_zero(int from)",
	"{	if (!from--)",
	"	{	uerror(\"ref to uninitialized chan name (q_zero)\");",
	"		return 0;",
	"	}",
	"	switch(((Q0 *)qptr(from))->_t) {",
	0,
};

static const char *Addq3[] = {
	"	case 0: printf(\"queue %%d was deleted\\n\", from+1);",
	"	}",
	"	Uerror(\"bad queue q-zero\");",
	"	return -1;",
	"}",
	"int",
	"not_RV(int from)",
	"{	if (q_zero(from))",
	"	{	printf(\"==>> a test of the contents of a rv \");",
	"		printf(\"channel always returns FALSE\\n\");",
	"		uerror(\"error to poll rendezvous channel\");",
	"	}",
	"	return 1;",
	"}",
	"#endif",
	"#ifndef XUSAFE",
	"void",
	"setq_claim(int x, int m, char *s, int y, char *p)",
	"{	if (x == 0)",
	"	uerror(\"x[rs] claim on uninitialized channel\");",
	"	if (x < 0 || x > MAXQ)",
	"		Uerror(\"cannot happen setq_claim\");",
	"	q_claim[x] |= m;",
	"	p_name[y] = p;",
	"	q_name[x] = s;",
	"	if (m&2) q_S_check(x, y);",
	"	if (m&1) q_R_check(x, y);",
	"}",
	"short q_sender[MAXQ+1];",
	"int",
	"q_S_check(int x, int who)",
	"{	if (!q_sender[x])",
	"	{	q_sender[x] = who+1;",
	"#if SYNC",
	"		if (q_zero(x))",
	"		{	printf(\"chan %%s (%%d), \",",
	"				q_name[x], x-1);",
	"			printf(\"sndr proc %%s (%%d)\\n\",",
	"				p_name[who], who);",
	"			uerror(\"xs chans cannot be used for rv\");",
	"		}",
	"#endif",
	"	} else",
	"	if (q_sender[x] != who+1)",
	"	{	printf(\"pan: xs assertion violated: \");",
	"		printf(\"access to chan <%%s> (%%d)\\npan: by \",",
	"			q_name[x], x-1);",
	"		if (q_sender[x] > 0 && p_name[q_sender[x]-1])",
	"			printf(\"%%s (proc %%d) and by \",",
	"			p_name[q_sender[x]-1], q_sender[x]-1);",
	"		printf(\"%%s (proc %%d)\\n\",",
	"			p_name[who], who);",
	"		uerror(\"error, partial order reduction invalid\");",
	"	}",
	"	return 1;",
	"}",
	"short q_recver[MAXQ+1];",
	"int",
	"q_R_check(int x, int who)",
	"{",
	"#ifdef VERBOSE",
	"	printf(\"q_R_check x=%%d who=%%d\\n\", x, who);",
	"#endif",
	"	if (!q_recver[x])",
	"	{	q_recver[x] = who+1;",
	"#if SYNC",
	"		if (q_zero(x))",
	"		{	printf(\"chan %%s (%%d), \",",
	"				q_name[x], x-1);",
	"			printf(\"recv proc %%s (%%d)\\n\",",
	"				p_name[who], who);",
	"			uerror(\"xr chans cannot be used for rv\");",
	"		}",
	"#endif",
	"	} else",
	"	if (q_recver[x] != who+1)",
	"	{	printf(\"pan: xr assertion violated: \");",
	"		printf(\"access to chan %%s (%%d)\\npan: \",",
	"			q_name[x], x-1);",
	"		if (q_recver[x] > 0 && p_name[q_recver[x]-1])",
	"			printf(\"by %%s (proc %%d) and \",",
	"			p_name[q_recver[x]-1], q_recver[x]-1);",
	"		printf(\"by %%s (proc %%d)\\n\",",
	"			p_name[who], who);",
	"		uerror(\"error, partial order reduction invalid\");",
	"	}",
	"	return 1;",
	"}",
	"#endif",
	"int",
	"q_len(int x)",
	"{	if (!x--)",
	"	uerror(\"ref to uninitialized chan name (len)\");",
	"	return ((Q0 *)qptr(x))->Qlen;",
	"}\n",
	"int",
	"q_full(int from)",
	"{	if (!from--)",
	"	uerror(\"ref to uninitialized chan name (qfull)\");",
	"	switch(((Q0 *)qptr(from))->_t) {",
	0,
};

static const char *Addq4[] = {
	"	case 0: printf(\"queue %%d was deleted\\n\", from+1);",
	"	}",
	"	Uerror(\"bad queue - q_full\");",
	"	return 0;",
	"}\n",
	"#ifdef HAS_UNLESS",
	"int",
	"q_e_f(int from)",
	"{	/* empty or full */",
	"	return !q_len(from) || q_full(from);",
	"}",
	"#endif",
	"#if NQS>0",
	"int",
	"qrecv(int from, int slot, int fld, int done)",
	"{	uchar *z;",
	"	int j, k, r=0;\n",
	"	if (!from--)",
	"	uerror(\"ref to uninitialized chan name (receiving)\");",
	"#if defined(TRIX) && !defined(BFS)",
	"	#ifndef TRIX_ORIG",
	"		(trpt+1)->q_bup = now._ids_[now._nr_pr+from];",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d r save %%p from %%d\\n\",",
	"			depth, from, (trpt+1)->q_bup, now._nr_pr+from);",
	"		#endif",
	"	#endif",
	"	channels[from]->modified = 1;	/* qrecv */",
	"	#ifdef V_TRIX",
	"		printf(\"%%4d: channel %%d modified\\n\", depth, from);",
	"	#endif",
	"#endif",
	"	if (from >= (int) now._nr_qs || from < 0)",
	"		Uerror(\"qrecv bad queue#\");",
	"	z = qptr(from);",
	"#ifdef EVENT_TRACE",
	"	if (done && (in_r_scope(from+1)))",
	"		require('r', from);",
	"#endif",
	"	switch (((Q0 *)qptr(from))->_t) {",
	0,
};

static const char *Addq5[] = {
	"	case 0: printf(\"queue %%d was deleted\\n\", from+1);",
	"	default: Uerror(\"bad queue - qrecv\");",
	"	}",
	"	return r;",
	"}",
	"#endif\n",
	"#ifndef BITSTATE",
	"	#ifdef COLLAPSE",
	"long",
	"col_q(int i, char *z)",
	"{	int j=0, k;",
	"	char *x, *y;",
	"	Q0 *ptr = (Q0 *) qptr(i);",
	"	switch (ptr->_t) {",
	0,
};

static const char *Code0[] = {
	"void",
	"run(void)",
	"{	/* int i; */",
	"	memset((char *)&now, 0, sizeof(State));",
	"	vsize = (ulong) (sizeof(State) - VECTORSZ);",
	"#ifndef NOVSZ",
	"	now._vsz = vsize;",
	"#endif",
	"#ifdef TRIX",
	"	if (VECTORSZ != sizeof(now._ids_))",
	"	{	printf(\"VECTORSZ is %%d, but should be %%d in this mode\\n\",",
	"			VECTORSZ, (int) sizeof(now._ids_));",
	"		Uerror(\"VECTORSZ set incorrectly, recompile Spin (not pan.c)\");",
	"	}",
	"#endif",
	"/* optional provisioning statements, e.g. to */",
	"/* set hidden variables, used as constants */",
	"#ifdef PROV",
	"#include PROV",
	"#endif",
	"	settable();",
	0,
};

static const char *R0[] = {
	"	Maxbody = max(Maxbody, ((int) sizeof(P%d)));",
	"	reached[%d] = reached%d;",
	"	accpstate[%d] = (uchar *) emalloc(nstates%d);",
	"	progstate[%d] = (uchar *) emalloc(nstates%d);",
	"	loopstate%d = loopstate[%d] = (uchar *) emalloc(nstates%d);",
	"	stopstate[%d] = (uchar *) emalloc(nstates%d);",
	"	visstate[%d] = (uchar *) emalloc(nstates%d);",
	"	mapstate[%d] = (short *) emalloc(nstates%d * sizeof(short));",
	"	stopstate[%d][endstate%d] = 1;",
	0,
};

static const char *R00[] = {
	"	NrStates[%d] = nstates%d;",
	0,
};

static const char *R0a[] = {
	"	retrans(%d, nstates%d, start%d, src_ln%d, reached%d, loopstate%d);",
	0,
};

static const char *Code1[] = {
	"#ifdef NP",
	"	#define ACCEPT_LAB	1 /* at least 1 in np_ */",
	"#else",
	"	#define ACCEPT_LAB	%d /* user-defined accept labels */",
	"#endif",
	"#ifdef MEMCNT",
	"	#ifdef MEMLIM",
	"		#warning -DMEMLIM takes precedence over -DMEMCNT",
	"		#undef MEMCNT",
	"	#else",
	"		#if MEMCNT<20",
	"			#warning using minimal value -DMEMCNT=20 (=1MB)",
	"			#define MEMLIM	(1)",
	"			#undef MEMCNT",
	"		#else",
	"			#if MEMCNT==20",
	"				#define MEMLIM	(1)",
	"				#undef MEMCNT",
	"			#else",
	"			 #if MEMCNT>=50",
	"				#error excessive value for MEMCNT",
	"			 #else",
	"				#define MEMLIM	(1<<(MEMCNT-20))",
	"			 #endif",
	"			#endif",
	"		#endif",
	"	#endif",
	"#endif",

	"#if NCORE>1 && !defined(MEMLIM)",
	"	#define MEMLIM	(2048)	/* need a default, using 2 GB */",
	"#endif",
	0,
};

static const char *Code3[] = {
	"#define PROG_LAB	%d /* progress labels */",
	0,
};

static const char *R2[] = {
	"uchar *accpstate[%d];",
	"uchar *progstate[%d];",
	"uchar *loopstate[%d];",
	"uchar *reached[%d];",
	"uchar *stopstate[%d];",
	"uchar *visstate[%d];",
	"short *mapstate[%d];",
	"#ifdef HAS_CODE",
	"	int NrStates[%d];",
	"#endif",
	0,
};
static const char *R3[] = {
	"	Maxbody = max(Maxbody, ((int) sizeof(Q%d)));",
	0,
};
static const char *R4[] = {
	"	r_ck(reached%d, nstates%d, %d, src_ln%d, src_file%d);",
	0,
};
static const char *R5[] = {
	"	case %d: j = sizeof(P%d); break;",
	0,
};
static const char *R6[] = {
	"	}",
	"	this = o_this;",
	"#ifdef TRIX",
	"	re_mark_all(1); /* addproc */",
	"#endif",
	"	return h-BASE;",
	"#ifndef NOBOUNDCHECK",
	"	#undef Index",
	"	#define Index(x, y)	Boundcheck(x, y, II, tt, t)",
	"#endif",
	"}\n",
	"#if defined(BITSTATE) && defined(COLLAPSE)",
	"	/* just to allow compilation, to generate the error */",
	"	long col_p(int i, char *z) { return 0; }",
	"	long col_q(int i, char *z) { return 0; }",
	"#endif",
	"#ifndef BITSTATE",
	"	#ifdef COLLAPSE",
	"long",
	"col_p(int i, char *z)",
	"{	int j, k; ulong ordinal(char *, long, short);",
	"	char *x, *y;",
	"	P0 *ptr = (P0 *) pptr(i);",
	"	switch (ptr->_t) {",
	"	case 0: j = sizeof(P0); break;",
	0,
};
static const char *R7a[] = {
	"void\nre_mark_all(int whichway)",
	"{	int j;",
	"	#ifdef V_TRIX",
	"		printf(\"%%d: re_mark_all channels %%d\\n\", depth, whichway);",
	"	#endif",
	"	#ifndef BFS",
	"	for (j = 0; j < now._nr_qs; j++)",
	"		channels[j]->modified = 1; /* channel index moved */",
	"	#endif",
	"	#ifndef TRIX_ORIG",
	"	if (whichway > 0)",
	"	{	for (j = now._nr_pr + now._nr_qs - 1; j >= now._nr_pr; j--)",
	"			now._ids_[j] = now._ids_[j-1];",
	"	} else",
	"	{	for (j = now._nr_pr; j < now._nr_pr + now._nr_qs; j++)",
	"			now._ids_[j] = now._ids_[j+1];",
	"	}",
	"	#endif",
	"}",
	0,
};

static const char *R7b[] = {
	"#ifdef BFS_PAR",
	"inline void",
	"bfs_prepmask(int caller)",
	"{",
	"#if !defined(NOCOMP) && !defined(HC)",
	"	memcpy((char *) &tmp_msk, (const char *) Mask, sizeof(State));",
	"	Mask = (uchar *) &tmp_msk;",
	"#endif",
	"	switch (caller) {",
	"	case 1:	/* addproc */",
	"#if VECTORSZ>32000",
	"		memcpy((char *) P_o_tmp, (const char *) proc_offset, MAXPROC*sizeof(int));",
	"#else",
	"		memcpy((char *) P_o_tmp, (const char *) proc_offset, MAXPROC*sizeof(short));",
	"#endif",
	"		memcpy((char *) P_s_tmp, (const char *) proc_skip, MAXPROC*sizeof(uchar));",
	"		proc_offset = P_o_tmp;",
	"		proc_skip   = (uchar *) &P_s_tmp[0];",
	"		break;",
	"	case 2: /* addqueue */",
	"#if VECTORSZ>32000",
	"		memcpy((char *) Q_o_tmp, (const char *) q_offset, MAXQ*sizeof(int));",
	"#else",
	"		memcpy((char *) Q_o_tmp, (const char *) q_offset, MAXQ*sizeof(short));",
	"#endif",
	"		memcpy((char *) Q_s_tmp, (const char *) q_skip, MAXQ*sizeof(uchar));",
	"		q_offset = Q_o_tmp;",
	"		q_skip   = (uchar *) &Q_s_tmp[0];",
	"		break;",
	"	case 3: /* no nothing */",
	"		break;",
	"	default: /* cannot happen */",
	"		Uerror(\"no good\");",
	"		break;",
	"	}",
	"}",
	"",
	"typedef struct BFS_saves BFS_saves;",
	"struct BFS_saves {",
	"	char *m;",
	"	BFS_saves *nxt;",
	"} *bfs_save_po,",
	"  *bfs_save_ps,",
	"#if !defined(NOCOMP) && !defined(HC)",
	"  *bfs_save_mask,",
	"#endif",
	"  *bfs_save_qo,",
	"  *bfs_save_qs;",
	"",
	"extern volatile uchar *sh_malloc(ulong);",
	"static int bfs_runs; /* 0 before local heaps are initialized */",
	"",
	"void",
	"bfs_swoosh(BFS_saves **where, char **what, int howmuch)",
	"{	BFS_saves *m;",
	"	for (m = *where; m; m = m->nxt)",
	"	{	if (memcmp(m->m, *what, howmuch) == 0)",
	"		{	*what = m->m;",
	"			return;",
	"	}	}",
	"	m = (BFS_saves *) emalloc(sizeof(BFS_saves));",
	"	if (bfs_runs)",
	"	{	m->m = (char *) sh_malloc(howmuch);",
	"	} else",
	"	{	m->m = (char *) sh_pre_malloc(howmuch);",
	"	}",
	"	memcpy(m->m, *what, howmuch);",
	"	m->nxt = *where;",
	"	*where = m;",
	"	*what = m->m;",
	"}",
	"",
	"void",
	"bfs_fixmask(int caller)",	/* 1=addproc, 2=addqueue */
	"{",
	"#if !defined(NOCOMP) && !defined(HC)",
	"	bfs_swoosh(&bfs_save_mask, (char **) &Mask, sizeof(State));",
	"#endif",
	"#ifndef TRIX",
	"	switch (caller) {",
	"	case 1: /* addproc */",
	"	#if VECTORSZ>32000",
	"		bfs_swoosh(&bfs_save_po, (char **) &proc_offset, MAXPROC*sizeof(int));",
	"	#else",
	"		bfs_swoosh(&bfs_save_po, (char **) &proc_offset, MAXPROC*sizeof(short));",
	"	#endif",
	"		bfs_swoosh(&bfs_save_ps, (char **) &proc_skip, MAXPROC*sizeof(uchar));",
	"		break;",
	"	case 2: /* addqueue */",
	"	#if VECTORSZ>32000",
	"		bfs_swoosh(&bfs_save_qo, (char **) &q_offset, MAXQ*sizeof(int));",
	"	#else",
	"		bfs_swoosh(&bfs_save_qo, (char **) &q_offset, MAXQ*sizeof(short));",
	"	#endif",
	"		bfs_swoosh(&bfs_save_qs, (char **) &q_skip, MAXQ*sizeof(uchar));",
	"		break;",
	"	case 3: /* do nothing */",
	"		break;",
	"	default:",
	"		Uerror(\"double plus ungood\");",
	"		break;",
	"	}",
	"#endif",
	"}",
	"#endif",
	0,
};
static const char *R8a[] = {
	"	default: Uerror(\"bad proctype - collapse\");",
	"	}",
	"	if (z) x = z; else x = scratch;",
	"	y = (char *) ptr; k = proc_offset[i];",
	"",
	"#if !defined(NOCOMP) && !defined(HC)",
	"	for ( ; j > 0; j--, y++)",
	"		if (!Mask[k++]) *x++ = *y;",
	"#else",
	"	memcpy(x, y, j);",
	"	x += j;",
	"#endif",
	"	for (j = 0; j < WS-1; j++)",
	"		*x++ = 0;",
	"	x -= j;",
	"	if (z) return (long) (x - z);",
	"	return ordinal(scratch, x-scratch, (short) (2+ptr->_t));",
	"}",
	"	#endif",
	"#endif",
	0,
};
static const char *R8b[] = {
	"	default: Uerror(\"bad qtype - collapse\");",
	"	}",
	"	if (z) x = z; else x = scratch;",
	"	y = (char *) ptr; k = q_offset[i];",

	"#if NQS > 0",
	"	/* no need to store the empty slots at the end */",
	"	j -= (q_max[ptr->_t] - ptr->Qlen) * ((j - 2)/q_max[ptr->_t]);",
	"#endif",
	"",
	"#if !defined(NOCOMP) && !defined(HC)",
	"	for ( ; j > 0; j--, y++)",
	"		if (!Mask[k++]) *x++ = *y;",
	"#else",
	"	memcpy(x, y, j);",
	"	x += j;",
	"#endif",
	"	for (j = 0; j < WS-1; j++)",
	"		*x++ = 0;",
	"	x -= j;",
	"	if (z) return (long) (x - z);",
	"	return ordinal(scratch, x-scratch, 1); /* chan */",
	"}",
	"	#endif",
	"#endif",
	0,
};

static const char *R12[] = {
	"\t\tcase %d: r = ((Q%d *)z)->contents[slot].fld%d; break;",
	0,
};
const char *R13[] = {
	"int ",
	"unsend(int into)",
	"{	int _m=0, j; uchar *z;\n",
	"#ifdef HAS_SORTED",
	"	int k;",
	"#endif",
	"	if (!into--)",
	"		uerror(\"ref to uninitialized chan (unsend)\");",
	"#if defined(TRIX) && !defined(BFS)",
	"	#ifndef TRIX_ORIG",
	"		now._ids_[now._nr_pr+into] = trpt->q_bup;",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d s restore %%p into %%d\\n\",",
	"				depth, into, trpt->q_bup, now._nr_pr+into);",
	"		#endif",
	"	#else",
	"		channels[into]->modified = 1;	/* unsend */",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d unmodify\\n\", depth, into);",
	"		#endif",
	"	#endif",
	"#endif",
	"	z = qptr(into);",
	"	j = ((Q0 *)z)->Qlen;",
	"	((Q0 *)z)->Qlen = --j;",
	"	switch (((Q0 *)qptr(into))->_t) {",
	0,
};
const char *R14[] = {
	"	default: Uerror(\"bad queue - unsend\");",
	"	}",
	"	return _m;",
	"}\n",
	"void",
	"unrecv(int from, int slot, int fld, int fldvar, int strt)",
	"{	int j; uchar *z;\n",
	"	if (!from--)",
	"		uerror(\"ref to uninitialized chan (unrecv)\");",
	"#if defined(TRIX) && !defined(BFS)",
	"	#ifndef TRIX_ORIG",
	"		now._ids_[now._nr_pr+from] = trpt->q_bup;",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d r restore %%p into %%d\\n\",",
	"				depth, from, trpt->q_bup, now._nr_pr+from);",
	"		#endif",
	"	#else",
	"		channels[from]->modified = 1;	/* unrecv */",
	"		#ifdef V_TRIX",
	"			printf(\"%%4d: channel %%d unmodify\\n\", depth, from);",
	"		#endif",
	"	#endif",
	"#endif",
	"	z = qptr(from);",
	"	j = ((Q0 *)z)->Qlen;",
	"	if (strt) ((Q0 *)z)->Qlen = j+1;",
	"	switch (((Q0 *)qptr(from))->_t) {",
	0,
};
const char *R15[] = {
	"	default: Uerror(\"bad queue - qrecv\");",
	"	}",
	"}",
	0,
};
static const char *Proto[] = {
	"",
	"/** function prototypes **/",
	"char *emalloc(ulong);",
	"char *Malloc(ulong);",
	"int Boundcheck(int, int, int, int, Trans *);",
	"int addqueue(int, int, int);",
	"/* int atoi(char *); */",
	"/* int abort(void); */",
	"int close(int);",	/* should probably remove this */
#if 0
	"#ifndef SC",
	"	int creat(char *, unsigned short);",
	"	int write(int, void *, unsigned);",
	"#endif",
#endif
	"int delproc(int, int);",
	"int endstate(void);",
	"int find_claim(char *);",
	"int h_store(char *, int);",
	"int pan_rand(void);",
	"int q_cond(short, Trans *);",
	"int q_full(int);",
	"int q_len(int);",
	"int q_zero(int);",
	"int qrecv(int, int, int, int);",
	"int unsend(int);",
	"/* void *sbrk(int); */",
	"void spin_assert(int, char *, int, int, Trans *);",
	"#ifdef BFS_PAR",
	"void bfs_printf(const char *, ...);",
	"volatile uchar *sh_pre_malloc(ulong);",
	"#endif",
	"void c_chandump(int);",
	"void c_globals(void);",
	"void c_locals(int, int);",
	"void checkcycles(void);",
	"void crack(int, int, Trans *, short *);",
	"void d_sfh(uchar *, int);",
	"void d_hash(uchar *, int);",
	"void s_hash(uchar *, int);",
	"void delq(int);",
	"void dot_crack(int, int, Trans *);",
	"void do_reach(void);",
	"void pan_exit(int);",
	"void exit(int);",
	"#ifdef BFS_PAR",
	"	void bfs_setup_mem(void);",
	"#endif",
	"#ifdef BITSTATE",
	"	void sinit(void);",
	"#else",
	"	void hinit(void);",
	"#endif",
	"void imed(Trans *, int, int, int);",
	"void new_state(void);",
	"void p_restor(int);",
	"void putpeg(int, int);",
	"void putrail(void);",
	"void q_restor(void);",
	"void retrans(int, int, int, short *, uchar *, uchar *);",
	"void select_claim(int);",
	"void settable(void);",
	"void setq_claim(int, int, char *, int, char *);",
	"void sv_restor(void);",
	"void sv_save(void);",
	"void tagtable(int, int, int, short *, uchar *);",
	"void do_dfs(int, int, int, short *, uchar *, uchar *);",
	"void unrecv(int, int, int, int, int);",
	"void usage(FILE *);",
	"void wrap_stats(void);\n",
	"#ifdef MA",
	"	int g_store(char *, int, uchar);",
	"#endif",
	"#if defined(FULLSTACK) && defined(BITSTATE)",
	"	int  onstack_now(void);",
	"	void onstack_init(void);",
	"	void onstack_put(void);",
	"	void onstack_zap(void);",
	"#endif",
	"#ifndef XUSAFE",
	"	int q_S_check(int, int);",
	"	int q_R_check(int, int);",
	"	uchar q_claim[MAXQ+1];",
	"	char *q_name[MAXQ+1];",
	"	char *p_name[MAXPROC+1];",
	"#endif",
	"",
	"#ifndef NO_V_PROVISO",
	"	#define V_PROVISO",
	"#endif",
	"#if !defined(NO_RESIZE) && !defined(AUTO_RESIZE) && !defined(BITSTATE) && !defined(SPACE) && !defined(USE_TDH) && NCORE==1",
	"	#define AUTO_RESIZE",
	"#endif",
	"",
	"typedef struct Trail Trail;",
	"typedef struct H_el  H_el;",
	"",
	"struct H_el {",
	"	H_el *nxt;",
	"	#ifdef FULLSTACK",
	"		unsigned int tagged;",
	"		#if defined(BITSTATE) && !defined(NOREDUCE) && !defined(SAFETY)",
	"			unsigned int proviso;", /* uses just 1 bit 0/1 */
	"		#endif",
	"	#endif",
	"	#if defined(CHECK) || (defined(COLLAPSE) && !defined(FULLSTACK))",
	"		ulong st_id;",
	"	#endif",
	"	#if !defined(SAFETY) || defined(REACH)",
	"		uint D;",
	"	#endif",
	"	#ifdef BCS",
	"		#ifndef CONSERVATIVE",
	"			#define CONSERVATIVE	1 /* good for up to 8 processes */",
	"		#endif",
	"		#ifdef CONSERVATIVE",
	"			#if CONSERVATIVE <= 0 || CONSERVATIVE>32",
	"			#error sensible values for CONSERVATIVE are 1..32 (256/8 = 32)",
	"			#endif",
	"			uchar ctx_pid[CONSERVATIVE];", /* pids setting lowest value */
	"		#endif",
	"		uchar ctx_low;", /* lowest nr of context switches seen so far */
	"	#endif",
	"	#if NCORE>1",
	"		/* could cost 1 extra word: 4 bytes if 32-bit and 8 bytes if 64-bit */",
	"		#ifdef V_PROVISO",
	"			uchar	cpu_id;		/* id of cpu that created the state */",
	"		#endif",
	"	#endif",
	"	#ifdef COLLAPSE",
	"		#if VECTORSZ<65536",
	"			ushort ln;",	/* length of vector */
	"		#else",
	"			ulong ln;",	/* length of vector */
	"		#endif",
	"	#endif",
	"	#if defined(AUTO_RESIZE) && !defined(BITSTATE)",
	"		ulong m_K1;",
	"	#endif",
	"	ulong state;",
	"};",
	"",
	"#ifdef BFS_PAR",
	"typedef struct BFS_Trail BFS_Trail;",
	"struct BFS_Trail {",
	"	H_el *ostate;",
	"	int   st;",
	"	int   o_tt;",
	"	T_ID  t_id;", /* could be uint, ushort, or uchar */
	"	uchar pr;",
	"	uchar o_pm;",
	"	uchar tau;",
	"};",
	"	#if SYNC>0",
	"		#undef BFS_NOTRAIL", /* just in case it was used */
	"	#endif",
	"#endif",
	"",
	"struct Trail {",
	"	int   st;	/* current state */",
	"	int   o_tt;",
	"#ifdef PERMUTED",
	"	uint  seed;",
	"	uchar oII;",
	"#endif",
	"	uchar pr;	/* process id */",
	"	uchar tau;	/* 8 bit-flags */",
	"	uchar o_pm;	/* 8 more bit-flags */",
	"",
	"	#if 0",
	"	Meaning of bit-flags on tau and o_pm:",
	"	tau&1   -> timeout enabled",
	"	tau&2   -> request to enable timeout 1 level up (in claim)",
	"	tau&4   -> current transition is a  claim move",
	"	tau&8   -> current transition is an atomic move",
	"	tau&16  -> last move was truncated on stack",
	"	tau&32  -> current transition is a preselected move",
	"	tau&64  -> at least one next state is not on the stack",
	"	tau&128 -> current transition is a stutter move",

	"	o_pm&1	-> the current pid moved -- implements else",
	"	o_pm&2	-> this is an acceptance state",
	"	o_pm&4	-> this is a  progress state",
	"	o_pm&8	-> fairness alg rule 1 undo mark",
	"	o_pm&16	-> fairness alg rule 3 undo mark",
	"	o_pm&32	-> fairness alg rule 2 undo mark",
	"	o_pm&64 -> the current proc applied rule2",
	"	o_pm&128 -> a fairness, dummy move - all procs blocked",
	"	#endif",
	"",
	"	#ifdef NSUCC",
	"	 uchar n_succ;	/* nr of successor states */",
	"	#endif",
	"	#if defined(FULLSTACK) && defined(MA) && !defined(BFS)",
	"	 uchar proviso;",
	"	#endif",
	"	#ifndef BFS",
	"	 uchar  o_n, o_ot;	/* to save locals */",
	"	#endif",
	"	uchar  o_m;",
	"	#ifdef EVENT_TRACE",
	"		#if nstates_event<256",
	"		 uchar o_event;",
	"		#else",
	"		 unsigned short o_event;",
	"		#endif",
	"	#endif",
	"	#ifndef BFS",
	"		short o_To;",
	"		#if defined(T_RAND) || defined(RANDOMIZE)",
	"		 short oo_i;",
	"		#endif",
	"	#endif",
	"	#if defined(HAS_UNLESS) && !defined(BFS)",
	"	 int e_state;	/* if escape trans - state of origin */",
	"	#endif",
	"	#if (defined(FULLSTACK) && !defined(MA)) || defined(BFS) || (NCORE>1)",
	"	 H_el *ostate;	/* pointer to stored state */",
	"	#endif",
	/* CNTRSTACK when !NOREDUCE && BITSTATE && SAFETY && WS<=4, uses LL[] */
	"	#if defined(CNTRSTACK) && !defined(BFS)",
	"	 long	j6, j7;",
	"	#endif",
	"	Trans *o_t;",	/* transition fct, next state   */

	"	#if !defined(BFS) && !defined(TRIX_ORIG)",
	"	 char *p_bup;",
	"	 char *q_bup;",
	"	#endif",

	"	#ifdef BCS",
	"	 unsigned short sched_limit;",
	"	 unsigned char  bcs; /* phase 1 or 2, or forced 4 */",
	"	 unsigned char  b_pno; /* preferred pid */",
	"	#endif",

	"	#ifdef P_RAND",	/* process scheduling randomization */
	"	 unsigned char p_left;	/* nr of procs left to explore */",
	"	 short p_skip;	/* to find starting point in list */",
	"	#endif",

	"	#ifdef HAS_SORTED",
	"	 short ipt;",	/* insertion slot in q */
	"	#endif",
	"	#ifdef HAS_PRIORITY",
	"	 short o_priority;",
	"	#endif",
	"	union {",
	"	 int oval;",	/* single backup value of variable */
	"	 int *ovals;",	/* ptr to multiple values */
	"	} bup;",
	"}; /* end of struct Trail */",
	"",
	"#ifdef BFS",	/* breadth-first search */
	"	#define Q_PROVISO",
	"	#ifndef INLINE_REV",
	"		#define INLINE_REV",
	"	#endif",
	"",
	"typedef struct SV_Hold {",
	"	State *sv;",
	" #ifndef BFS_PAR",
	"	int  sz;",
	" #endif",
	"	struct SV_Hold *nxt;",
	"} SV_Hold;",
	"#if !defined(BFS_PAR) || NRUNS>0",
	"	typedef struct EV_Hold {",
	"	 #if !defined(BFS_PAR) || (!defined(NOCOMP) && !defined(HC) && NRUNS>0)",
	"		char *sv;	/* Mask */",
	"	 #endif",
	"	 #if VECTORSZ<65536",
	"		ushort sz;	/* vsize */",
	"	 #else",
	"		ulong  sz;",
	"	 #endif",
	"	 #ifdef BFS_PAR",
	"		uchar owner;",
	"	 #endif",
	"		uchar nrpr;",
	"		uchar nrqs;",
	"		#if !defined(BFS_PAR) || (!defined(TRIX) && NRUNS>0)",
	"			char *po, *qo;",
	"			char *ps, *qs;",
	"		#endif",
	"		struct EV_Hold *nxt;",
	"	} EV_Hold;",
	"#endif",
	"typedef struct BFS_State {",
	" #ifdef BFS_PAR",
	"	BFS_Trail *t_info;",
	"	State	*osv;",
	" #else",
	"	Trail	*frame;",
	"	SV_Hold *onow;",
	" #endif",
	" #if !defined(BFS_PAR) || NRUNS>0",
	"	EV_Hold *omask;",
	" #endif",
	" #if defined(Q_PROVISO) && !defined(NOREDUCE)",
	"	H_el *lstate;",
	" #endif",
	" #if !defined(BFS_PAR) || SYNC>0",
	"	short boq;",
	" #endif",
	" #ifdef VERBOSE",
	"	ulong nr;",
	" #endif",
	" #ifndef BFS_PAR",	/* new 6.2.4, 3 dec 2012 */
	"	struct BFS_State *nxt;",
	" #endif",
	"} BFS_State;",
	"#endif\n",
	0,
};

static const char *SvMap[] = {
	"void",
	"to_compile(void)",
	"{	char ctd[2048], carg[128];",
	"#ifdef BITSTATE",
	"	strcpy(ctd, \"-DBITSTATE \");",
	"#else",
	"	strcpy(ctd, \"\");",
	"#endif",
	"#ifdef BFS_PAR",
	"	strcat(ctd, \"-DBFS_PAR \");",
	"#endif",
	"#ifdef NOVSZ",
	"	strcat(ctd, \"-DNOVSZ \");",
	"#endif",
	"#ifdef PERMUTED",
	"	strcat(ctd, \"-DPERMUTED \");",
	"#endif",
	"#ifdef P_REVERSE",
	"	strcat(ctd, \"-DP_REVERSE \");",
	"#endif",
	"#ifdef T_REVERSE",
	"	strcat(ctd, \"-DT_REVERSE \");",
	"#endif",
	"#ifdef T_RAND",
	"	#if T_RAND>0",
	"	sprintf(carg, \"-DT_RAND=%%d \", T_RAND);",
	"	strcat(ctd, carg);",
	"	#else",
	"	strcat(ctd, \"-DT_RAND \");",
	"	#endif",
	"#endif",
	"#ifdef P_RAND",
	"	#if P_RAND>0",
	"	sprintf(carg, \"-DP_RAND=%%d \", P_RAND);",
	"	strcat(ctd, carg);",
	"	#else",
	"	strcat(ctd, \"-DP_RAND \");",
	"	#endif",
	"#endif",
	"#ifdef BCS",
	"	sprintf(carg, \"-DBCS=%%d \", BCS);",
	"	strcat(ctd, carg);",
	"#endif",
	"#ifdef BFS",
	"	strcat(ctd, \"-DBFS \");",
	"#endif",
	"#ifdef MEMLIM",
	"	sprintf(carg, \"-DMEMLIM=%%d \", MEMLIM);",
	"	strcat(ctd, carg);",
	"#else",
	"#ifdef MEMCNT",
	"	sprintf(carg, \"-DMEMCNT=%%d \", MEMCNT);",
	"	strcat(ctd, carg);",
	"#endif",
	"#endif",
	"#ifdef NOCLAIM",
	"	strcat(ctd, \"-DNOCLAIM \");",
	"#endif",
	"#ifdef SAFETY",
	"	strcat(ctd, \"-DSAFETY \");",
	"#else",
		"#ifdef NOFAIR",
		"	strcat(ctd, \"-DNOFAIR \");",
		"#else",
			"#ifdef NFAIR",
		"	if (NFAIR != 2)",
		"	{	sprintf(carg, \"-DNFAIR=%%d \", NFAIR);",
		"		strcat(ctd, carg);",
		"	}",
			"#endif",
		"#endif",
	"#endif",
	"#ifdef NOREDUCE",
	"	strcat(ctd, \"-DNOREDUCE \");",
	"#else",
		"#ifdef XUSAFE",
		"	strcat(ctd, \"-DXUSAFE \");",
		"#endif",
	"#endif",
	"#ifdef NP",
	"	strcat(ctd, \"-DNP \");",
	"#endif",
	"#ifdef PEG",
	"	strcat(ctd, \"-DPEG \");",
	"#endif",
	"#ifdef VAR_RANGES",
	"	strcat(ctd, \"-DVAR_RANGES \");",
	"#endif",
	"#ifdef HC",
	"	strcat(ctd, \"-DHC \");",
	"#endif",
	"#ifdef CHECK",
	"	strcat(ctd, \"-DCHECK \");",
	"#endif",
	"#ifdef CTL",
	"	strcat(ctd, \"-DCTL \");",
	"#endif",
	"#ifdef TRIX",
	"	strcat(ctd, \"-DTRIX \");",
	"#endif",
	"#ifdef NIBIS",
	"	strcat(ctd, \"-DNIBIS \");",
	"#endif",
	"#ifdef NOBOUNDCHECK",
	"	strcat(ctd, \"-DNOBOUNDCHECK \");",
	"#endif",
	"#ifdef NOSTUTTER",
	"	strcat(ctd, \"-DNOSTUTTER \");",
	"#endif",
	"#ifdef REACH",
	"	strcat(ctd, \"-DREACH \");",
	"#endif",
	"#ifdef PRINTF",
	"	strcat(ctd, \"-DPRINTF \");",
	"#endif",
	"#ifdef COLLAPSE",
	"	strcat(ctd, \"-DCOLLAPSE \");",
	"#endif",
	"#ifdef MA",
	"	sprintf(carg, \"-DMA=%%d \", MA);",
	"	strcat(ctd, carg);",
	"#endif",
	"#ifdef SVDUMP",
	"	strcat(ctd, \"-DSVDUMP \");",
	"#endif",
	"#if defined(VECTORSZ) && !defined(TRIX)",
	"	if (VECTORSZ != 1024)",
	"	{	sprintf(carg, \"-DVECTORSZ=%%d \", VECTORSZ);",
	"		strcat(ctd, carg);",
	"	}",
	"#endif",
	"#ifdef VERBOSE",
	"	strcat(ctd, \"-DVERBOSE \");",
	"#endif",
	"#ifdef CHECK",
	"	strcat(ctd, \"-DCHECK \");",
	"#endif",
	"#ifdef SDUMP",
	"	strcat(ctd, \"-DSDUMP \");",
	"#endif",
	"#if NCORE>1",
	"	sprintf(carg, \"-DNCORE=%%d \", NCORE);",
	"	strcat(ctd, carg);",
	"#endif",
	"#ifdef VMAX",
	"	if (VMAX != 256)",
	"	{	sprintf(carg, \"-DVMAX=%%d \", VMAX);",
	"		strcat(ctd, carg);",
	"	}",
	"#endif",
	"#ifdef PMAX",
	"	if (PMAX != 16)",
	"	{	sprintf(carg, \"-DPMAX=%%d \", PMAX);",
	"		strcat(ctd, carg);",
	"	}",
	"#endif",
	"#ifdef QMAX",
	"	if (QMAX != 16)",
	"	{	sprintf(carg, \"-DQMAX=%%d \", QMAX);",
	"		strcat(ctd, carg);",
	"	}",
	"#endif",
	"#ifdef SET_WQ_SIZE",
	"	sprintf(carg, \"-DSET_WQ_SIZE=%%d \", SET_WQ_SIZE);",
	"	strcat(ctd, carg);",
	"#endif",
	"	printf(\"Compiled as: cc -o pan %%span.c\\n\", ctd);",
	"}",
	0,
};
