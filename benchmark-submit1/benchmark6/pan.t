#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#else
#define tr_2_src(m,f,l)
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(8*sizeof(Trans **));
	int i;
	/* proctype 6: never_0 */

	trans[6] = (Trans **) emalloc(209*sizeof(Trans *));


  SI = (int *) emalloc(209*sizeof(int));

	SI[22] = 0;
	trans[6][22]	= settr(327,0,21,1,0,".(goto)", 0, 2, 0);
	SI[21] = 0;
	T = trans[6][21] = settr(326,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,1,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,3,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,5,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,7,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,9,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,11,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,13,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,15,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	T = T->nxt	= settr(326,0,17,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	    T->nxt	= settr(326,0,19,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:14 */
	SI[1] = 0;
	trans[6][1]	= settr(306,0,29,3,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(3, "./v4_long.never", 15);
	SI[2] = 0;
	trans[6][2]	= settr(307,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	SI[3] = 0;
	trans[6][3]	= settr(308,0,41,4,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(4, "./v4_long.never", 16);
	SI[4] = 0;
	trans[6][4]	= settr(309,0,41,1,0,"goto accept_S2115", 0, 2, 0);
	SI[5] = 0;
	trans[6][5]	= settr(310,0,85,5,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(5, "./v4_long.never", 17);
	SI[6] = 0;
	trans[6][6]	= settr(311,0,85,1,0,"goto T2_S2113", 0, 2, 0);
	SI[7] = 0;
	trans[6][7]	= settr(312,0,125,6,0,"((User[Pid[6]]._p==URequestSent))", 1, 2, 0);
		tr_2_src(6, "./v4_long.never", 18);
	SI[8] = 0;
	trans[6][8]	= settr(313,0,125,1,0,"goto T0_S2115", 0, 2, 0);
	SI[9] = 0;
	trans[6][9]	= settr(314,0,143,7,0,"((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(7, "./v4_long.never", 19);
	SI[10] = 0;
	trans[6][10]	= settr(315,0,143,1,0,"goto T0_S2442", 0, 2, 0);
	SI[11] = 0;
	trans[6][11]	= settr(316,0,152,8,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(8, "./v4_long.never", 20);
	SI[12] = 0;
	trans[6][12]	= settr(317,0,152,1,0,"goto T0_S2582", 0, 2, 0);
	SI[13] = 0;
	trans[6][13]	= settr(318,0,132,9,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(9, "./v4_long.never", 21);
	SI[14] = 0;
	trans[6][14]	= settr(319,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[15] = 0;
	trans[6][15]	= settr(320,0,160,10,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(10, "./v4_long.never", 22);
	SI[16] = 0;
	trans[6][16]	= settr(321,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[17] = 0;
	trans[6][17]	= settr(322,0,181,1,0,"(1)", 0, 2, 0);
	SI[18] = 0;
	trans[6][18]	= settr(323,0,181,1,0,"goto T0_S2438", 0, 2, 0);
	SI[19] = 0;
	trans[6][19]	= settr(324,0,204,1,0,"(1)", 0, 2, 0);
	SI[20] = 0;
	trans[6][20]	= settr(325,0,204,1,0,"goto T0_S1", 0, 2, 0);
	SI[23] = 0;
	trans[6][23]	= settr(328,0,29,1,0,"break", 0, 2, 0);
	SI[30] = 0;
	trans[6][30]	= settr(335,0,29,1,0,".(goto)", 0, 2, 0);
	SI[29] = 1;
	T = trans[6][29] = settr(334,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:27 */
	T = T->nxt	= settr(334,0,24,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:27 */
	    T->nxt	= settr(334,0,28,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:27 */
	SI[24] = 1;
	trans[6][24]	= settr(329,0,29,11,0,"(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(11, "./v4_long.never", 28);
	SI[25] = 1;
	trans[6][25]	= settr(330,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	T = trans[ 6][28] = settr(333,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:29 */
	T->nxt	= settr(333,2,26,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:29 */
	trans[6][26]	= settr(331,2,27,12,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(12, "./v4_long.never", 29);
	trans[6][27]	= settr(332,0,29,13,0,"assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(13, "./v4_long.never", 29);
	SI[31] = 0;
	trans[6][31]	= settr(336,0,41,1,0,"break", 0, 2, 0);
	SI[42] = 0;
	trans[6][42]	= settr(347,0,41,1,0,".(goto)", 0, 2, 0);
	SI[41] = 1;
	T = trans[6][41] = settr(346,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:32 */
	T = T->nxt	= settr(346,0,32,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:32 */
	T = T->nxt	= settr(346,0,36,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:32 */
	T = T->nxt	= settr(346,0,37,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:32 */
	    T->nxt	= settr(346,0,39,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:32 */
	SI[32] = 1;
	trans[6][32]	= settr(337,0,29,14,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(14, "./v4_long.never", 33);
	SI[33] = 1;
	trans[6][33]	= settr(338,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	T = trans[ 6][36] = settr(341,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:34 */
	T->nxt	= settr(341,2,34,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:34 */
	trans[6][34]	= settr(339,2,35,15,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(15, "./v4_long.never", 34);
	trans[6][35]	= settr(340,0,41,16,0,"assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(16, "./v4_long.never", 34);
	SI[37] = 1;
	trans[6][37]	= settr(342,0,125,17,0,"(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(17, "./v4_long.never", 35);
	SI[38] = 1;
	trans[6][38]	= settr(343,0,125,1,0,"goto T0_S2115", 0, 2, 0);
	SI[39] = 1;
	trans[6][39]	= settr(344,0,160,18,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(18, "./v4_long.never", 36);
	SI[40] = 1;
	trans[6][40]	= settr(345,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[43] = 0;
	trans[6][43]	= settr(348,0,49,1,0,"break", 0, 2, 0);
	SI[50] = 0;
	trans[6][50]	= settr(355,0,49,1,0,".(goto)", 0, 2, 0);
	SI[49] = 1;
	T = trans[6][49] = settr(354,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:39 */
	T = T->nxt	= settr(354,0,46,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:39 */
	    T->nxt	= settr(354,0,47,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:39 */
	T = trans[ 6][46] = settr(351,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:40 */
	T->nxt	= settr(351,2,44,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:40 */
	trans[6][44]	= settr(349,2,45,19,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(19, "./v4_long.never", 40);
	trans[6][45]	= settr(350,0,49,20,0,"assert(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(20, "./v4_long.never", 40);
	SI[47] = 1;
	trans[6][47]	= settr(352,0,160,1,0,"(1)", 0, 2, 0);
	SI[48] = 1;
	trans[6][48]	= settr(353,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[51] = 0;
	trans[6][51]	= settr(356,0,61,1,0,"break", 0, 2, 0);
	SI[62] = 0;
	trans[6][62]	= settr(367,0,61,1,0,".(goto)", 0, 2, 0);
	SI[61] = 1;
	T = trans[6][61] = settr(366,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:44 */
	T = T->nxt	= settr(366,0,52,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:44 */
	T = T->nxt	= settr(366,0,56,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:44 */
	T = T->nxt	= settr(366,0,57,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:44 */
	    T->nxt	= settr(366,0,59,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:44 */
	SI[52] = 1;
	trans[6][52]	= settr(357,0,29,21,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(21, "./v4_long.never", 45);
	SI[53] = 1;
	trans[6][53]	= settr(358,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	T = trans[ 6][56] = settr(361,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:46 */
	T->nxt	= settr(361,2,54,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:46 */
	trans[6][54]	= settr(359,2,55,22,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(22, "./v4_long.never", 46);
	trans[6][55]	= settr(360,0,61,23,0,"assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(23, "./v4_long.never", 46);
	SI[57] = 1;
	trans[6][57]	= settr(362,0,61,24,0,"(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(24, "./v4_long.never", 47);
	SI[58] = 1;
	trans[6][58]	= settr(363,0,61,1,0,"goto T2_S2115", 0, 2, 0);
	SI[59] = 1;
	trans[6][59]	= settr(364,0,49,25,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(25, "./v4_long.never", 48);
	SI[60] = 1;
	trans[6][60]	= settr(365,0,49,1,0,"goto accept_S2439", 0, 2, 0);
	SI[63] = 0;
	trans[6][63]	= settr(368,0,68,1,0,"break", 0, 2, 0);
	SI[69] = 0;
	trans[6][69]	= settr(374,0,68,1,0,".(goto)", 0, 2, 0);
	SI[68] = 1;
	T = trans[6][68] = settr(373,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:51 */
	T = T->nxt	= settr(373,0,64,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:51 */
	    T->nxt	= settr(373,0,66,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:51 */
	SI[64] = 1;
	trans[6][64]	= settr(369,0,68,26,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(26, "./v4_long.never", 52);
	SI[65] = 1;
	trans[6][65]	= settr(370,0,68,1,0,"goto T2_S2412", 0, 2, 0);
	SI[66] = 1;
	trans[6][66]	= settr(371,0,113,27,0,"((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(27, "./v4_long.never", 53);
	SI[67] = 1;
	trans[6][67]	= settr(372,0,113,1,0,"goto T2_S2439", 0, 2, 0);
	SI[70] = 0;
	trans[6][70]	= settr(375,0,85,1,0,"break", 0, 2, 0);
	SI[86] = 0;
	trans[6][86]	= settr(391,0,85,1,0,".(goto)", 0, 2, 0);
	SI[85] = 0;
	T = trans[6][85] = settr(390,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,71,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,73,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,75,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,77,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,79,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	T = T->nxt	= settr(390,0,81,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	    T->nxt	= settr(390,0,83,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:56 */
	SI[71] = 0;
	trans[6][71]	= settr(376,0,29,28,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(28, "./v4_long.never", 57);
	SI[72] = 0;
	trans[6][72]	= settr(377,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	SI[73] = 0;
	trans[6][73]	= settr(378,0,61,29,0,"((User[Pid[6]]._p==URequestSent))", 1, 2, 0);
		tr_2_src(29, "./v4_long.never", 58);
	SI[74] = 0;
	trans[6][74]	= settr(379,0,61,1,0,"goto T2_S2115", 0, 2, 0);
	SI[75] = 0;
	trans[6][75]	= settr(380,0,96,30,0,"((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(30, "./v4_long.never", 59);
	SI[76] = 0;
	trans[6][76]	= settr(381,0,96,1,0,"goto T2_S2442", 0, 2, 0);
	SI[77] = 0;
	trans[6][77]	= settr(382,0,105,31,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(31, "./v4_long.never", 60);
	SI[78] = 0;
	trans[6][78]	= settr(383,0,105,1,0,"goto T2_S2582", 0, 2, 0);
	SI[79] = 0;
	trans[6][79]	= settr(384,0,68,32,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(32, "./v4_long.never", 61);
	SI[80] = 0;
	trans[6][80]	= settr(385,0,68,1,0,"goto T2_S2412", 0, 2, 0);
	SI[81] = 0;
	trans[6][81]	= settr(386,0,113,33,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(33, "./v4_long.never", 62);
	SI[82] = 0;
	trans[6][82]	= settr(387,0,113,1,0,"goto T2_S2439", 0, 2, 0);
	SI[83] = 0;
	trans[6][83]	= settr(388,0,85,1,0,"(1)", 0, 2, 0);
	SI[84] = 0;
	trans[6][84]	= settr(389,0,85,1,0,"goto T2_S2113", 0, 2, 0);
	SI[87] = 0;
	trans[6][87]	= settr(392,0,96,1,0,"break", 0, 2, 0);
	SI[97] = 0;
	trans[6][97]	= settr(402,0,96,1,0,".(goto)", 0, 2, 0);
	SI[96] = 1;
	T = trans[6][96] = settr(401,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:66 */
	T = T->nxt	= settr(401,0,88,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:66 */
	T = T->nxt	= settr(401,0,90,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:66 */
	T = T->nxt	= settr(401,0,92,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:66 */
	    T->nxt	= settr(401,0,94,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:66 */
	SI[88] = 1;
	trans[6][88]	= settr(393,0,96,34,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(34, "./v4_long.never", 67);
	SI[89] = 1;
	trans[6][89]	= settr(394,0,96,1,0,"goto T2_S2442", 0, 2, 0);
	SI[90] = 1;
	trans[6][90]	= settr(395,0,105,35,0,"((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(35, "./v4_long.never", 68);
	SI[91] = 1;
	trans[6][91]	= settr(396,0,105,1,0,"goto T2_S2582", 0, 2, 0);
	SI[92] = 1;
	trans[6][92]	= settr(397,0,68,36,0,"(((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(36, "./v4_long.never", 69);
	SI[93] = 1;
	trans[6][93]	= settr(398,0,68,1,0,"goto T2_S2412", 0, 2, 0);
	SI[94] = 1;
	trans[6][94]	= settr(399,0,113,37,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(37, "./v4_long.never", 70);
	SI[95] = 1;
	trans[6][95]	= settr(400,0,113,1,0,"goto T2_S2439", 0, 2, 0);
	SI[98] = 0;
	trans[6][98]	= settr(403,0,105,1,0,"break", 0, 2, 0);
	SI[106] = 0;
	trans[6][106]	= settr(411,0,105,1,0,".(goto)", 0, 2, 0);
	SI[105] = 1;
	T = trans[6][105] = settr(410,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:73 */
	T = T->nxt	= settr(410,0,99,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:73 */
	T = T->nxt	= settr(410,0,101,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:73 */
	    T->nxt	= settr(410,0,103,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:73 */
	SI[99] = 1;
	trans[6][99]	= settr(404,0,105,38,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(38, "./v4_long.never", 74);
	SI[100] = 1;
	trans[6][100]	= settr(405,0,105,1,0,"goto T2_S2582", 0, 2, 0);
	SI[101] = 1;
	trans[6][101]	= settr(406,0,68,39,0,"((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(39, "./v4_long.never", 75);
	SI[102] = 1;
	trans[6][102]	= settr(407,0,68,1,0,"goto T2_S2412", 0, 2, 0);
	SI[103] = 1;
	trans[6][103]	= settr(408,0,113,40,0,"(((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(40, "./v4_long.never", 76);
	SI[104] = 1;
	trans[6][104]	= settr(409,0,113,1,0,"goto T2_S2439", 0, 2, 0);
	SI[107] = 0;
	trans[6][107]	= settr(412,0,113,1,0,"break", 0, 2, 0);
	SI[114] = 0;
	trans[6][114]	= settr(419,0,113,1,0,".(goto)", 0, 2, 0);
	SI[113] = 1;
	T = trans[6][113] = settr(418,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:79 */
	T = T->nxt	= settr(418,0,110,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:79 */
	    T->nxt	= settr(418,0,111,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:79 */
	T = trans[ 6][110] = settr(415,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:80 */
	T->nxt	= settr(415,2,108,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:80 */
	trans[6][108]	= settr(413,2,109,41,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(41, "./v4_long.never", 80);
	trans[6][109]	= settr(414,0,113,42,0,"assert(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(42, "./v4_long.never", 80);
	SI[111] = 1;
	trans[6][111]	= settr(416,0,113,1,0,"(1)", 0, 2, 0);
	SI[112] = 1;
	trans[6][112]	= settr(417,0,113,1,0,"goto T2_S2439", 0, 2, 0);
	SI[115] = 0;
	trans[6][115]	= settr(420,0,125,1,0,"break", 0, 2, 0);
	SI[126] = 0;
	trans[6][126]	= settr(431,0,125,1,0,".(goto)", 0, 2, 0);
	SI[125] = 1;
	T = trans[6][125] = settr(430,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:84 */
	T = T->nxt	= settr(430,0,116,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:84 */
	T = T->nxt	= settr(430,0,120,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:84 */
	T = T->nxt	= settr(430,0,121,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:84 */
	    T->nxt	= settr(430,0,123,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:84 */
	SI[116] = 1;
	trans[6][116]	= settr(421,0,29,43,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(43, "./v4_long.never", 85);
	SI[117] = 1;
	trans[6][117]	= settr(422,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	T = trans[ 6][120] = settr(425,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:86 */
	T->nxt	= settr(425,2,118,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:86 */
	trans[6][118]	= settr(423,2,119,44,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(44, "./v4_long.never", 86);
	trans[6][119]	= settr(424,0,125,45,0,"assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(45, "./v4_long.never", 86);
	SI[121] = 1;
	trans[6][121]	= settr(426,0,125,46,0,"(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(46, "./v4_long.never", 87);
	SI[122] = 1;
	trans[6][122]	= settr(427,0,125,1,0,"goto T0_S2115", 0, 2, 0);
	SI[123] = 1;
	trans[6][123]	= settr(428,0,49,47,0,"((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(47, "./v4_long.never", 88);
	SI[124] = 1;
	trans[6][124]	= settr(429,0,49,1,0,"goto accept_S2439", 0, 2, 0);
	SI[127] = 0;
	trans[6][127]	= settr(432,0,132,1,0,"break", 0, 2, 0);
	SI[133] = 0;
	trans[6][133]	= settr(438,0,132,1,0,".(goto)", 0, 2, 0);
	SI[132] = 1;
	T = trans[6][132] = settr(437,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:91 */
	T = T->nxt	= settr(437,0,128,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:91 */
	    T->nxt	= settr(437,0,130,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:91 */
	SI[128] = 1;
	trans[6][128]	= settr(433,0,132,48,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(48, "./v4_long.never", 92);
	SI[129] = 1;
	trans[6][129]	= settr(434,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[130] = 1;
	trans[6][130]	= settr(435,0,160,49,0,"((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(49, "./v4_long.never", 93);
	SI[131] = 1;
	trans[6][131]	= settr(436,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[134] = 0;
	trans[6][134]	= settr(439,0,143,1,0,"break", 0, 2, 0);
	SI[144] = 0;
	trans[6][144]	= settr(449,0,143,1,0,".(goto)", 0, 2, 0);
	SI[143] = 1;
	T = trans[6][143] = settr(448,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:96 */
	T = T->nxt	= settr(448,0,135,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:96 */
	T = T->nxt	= settr(448,0,137,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:96 */
	T = T->nxt	= settr(448,0,139,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:96 */
	    T->nxt	= settr(448,0,141,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:96 */
	SI[135] = 1;
	trans[6][135]	= settr(440,0,143,50,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(50, "./v4_long.never", 97);
	SI[136] = 1;
	trans[6][136]	= settr(441,0,143,1,0,"goto T0_S2442", 0, 2, 0);
	SI[137] = 1;
	trans[6][137]	= settr(442,0,152,51,0,"((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(51, "./v4_long.never", 98);
	SI[138] = 1;
	trans[6][138]	= settr(443,0,152,1,0,"goto T0_S2582", 0, 2, 0);
	SI[139] = 1;
	trans[6][139]	= settr(444,0,132,52,0,"(((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(52, "./v4_long.never", 99);
	SI[140] = 1;
	trans[6][140]	= settr(445,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[141] = 1;
	trans[6][141]	= settr(446,0,160,53,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(53, "./v4_long.never", 100);
	SI[142] = 1;
	trans[6][142]	= settr(447,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[145] = 0;
	trans[6][145]	= settr(450,0,152,1,0,"break", 0, 2, 0);
	SI[153] = 0;
	trans[6][153]	= settr(458,0,152,1,0,".(goto)", 0, 2, 0);
	SI[152] = 1;
	T = trans[6][152] = settr(457,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:103 */
	T = T->nxt	= settr(457,0,146,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:103 */
	T = T->nxt	= settr(457,0,148,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:103 */
	    T->nxt	= settr(457,0,150,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:103 */
	SI[146] = 1;
	trans[6][146]	= settr(451,0,152,54,0,"(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(54, "./v4_long.never", 104);
	SI[147] = 1;
	trans[6][147]	= settr(452,0,152,1,0,"goto T0_S2582", 0, 2, 0);
	SI[148] = 1;
	trans[6][148]	= settr(453,0,132,55,0,"((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))", 1, 2, 0);
		tr_2_src(55, "./v4_long.never", 105);
	SI[149] = 1;
	trans[6][149]	= settr(454,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[150] = 1;
	trans[6][150]	= settr(455,0,160,56,0,"(((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))", 1, 2, 0);
		tr_2_src(56, "./v4_long.never", 106);
	SI[151] = 1;
	trans[6][151]	= settr(456,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[154] = 0;
	trans[6][154]	= settr(459,0,160,1,0,"break", 0, 2, 0);
	SI[161] = 0;
	trans[6][161]	= settr(466,0,160,1,0,".(goto)", 0, 2, 0);
	SI[160] = 1;
	T = trans[6][160] = settr(465,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:109 */
	T = T->nxt	= settr(465,0,157,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:109 */
	    T->nxt	= settr(465,0,158,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:109 */
	T = trans[ 6][157] = settr(462,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:110 */
	T->nxt	= settr(462,2,155,0,0,"ATOMIC", 1, 2, 0);
		/* ./v4_long.never:110 */
	trans[6][155]	= settr(460,2,156,57,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(57, "./v4_long.never", 110);
	trans[6][156]	= settr(461,0,160,58,0,"assert(!((User[Pid[6]]._p==NoException)))", 1, 2, 0);
		tr_2_src(58, "./v4_long.never", 110);
	SI[158] = 1;
	trans[6][158]	= settr(463,0,160,1,0,"(1)", 0, 2, 0);
	SI[159] = 1;
	trans[6][159]	= settr(464,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[162] = 0;
	trans[6][162]	= settr(467,0,181,1,0,"break", 0, 2, 0);
	SI[182] = 0;
	trans[6][182]	= settr(487,0,181,1,0,".(goto)", 0, 2, 0);
	SI[181] = 0;
	T = trans[6][181] = settr(486,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,163,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,165,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,167,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,169,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,171,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,173,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,175,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	T = T->nxt	= settr(486,0,177,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	    T->nxt	= settr(486,0,179,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:114 */
	SI[163] = 0;
	trans[6][163]	= settr(468,0,29,59,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(59, "./v4_long.never", 115);
	SI[164] = 0;
	trans[6][164]	= settr(469,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	SI[165] = 0;
	trans[6][165]	= settr(470,0,125,60,0,"((User[Pid[6]]._p==URequestSent))", 1, 2, 0);
		tr_2_src(60, "./v4_long.never", 116);
	SI[166] = 0;
	trans[6][166]	= settr(471,0,125,1,0,"goto T0_S2115", 0, 2, 0);
	SI[167] = 0;
	trans[6][167]	= settr(472,0,143,61,0,"((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(61, "./v4_long.never", 117);
	SI[168] = 0;
	trans[6][168]	= settr(473,0,143,1,0,"goto T0_S2442", 0, 2, 0);
	SI[169] = 0;
	trans[6][169]	= settr(474,0,152,62,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(62, "./v4_long.never", 118);
	SI[170] = 0;
	trans[6][170]	= settr(475,0,152,1,0,"goto T0_S2582", 0, 2, 0);
	SI[171] = 0;
	trans[6][171]	= settr(476,0,132,63,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(63, "./v4_long.never", 119);
	SI[172] = 0;
	trans[6][172]	= settr(477,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[173] = 0;
	trans[6][173]	= settr(478,0,160,64,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(64, "./v4_long.never", 120);
	SI[174] = 0;
	trans[6][174]	= settr(479,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[175] = 0;
	trans[6][175]	= settr(480,0,41,65,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(65, "./v4_long.never", 121);
	SI[176] = 0;
	trans[6][176]	= settr(481,0,41,1,0,"goto accept_S2115", 0, 2, 0);
	SI[177] = 0;
	trans[6][177]	= settr(482,0,85,66,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(66, "./v4_long.never", 122);
	SI[178] = 0;
	trans[6][178]	= settr(483,0,85,1,0,"goto T2_S2113", 0, 2, 0);
	SI[179] = 0;
	trans[6][179]	= settr(484,0,181,1,0,"(1)", 0, 2, 0);
	SI[180] = 0;
	trans[6][180]	= settr(485,0,181,1,0,"goto T0_S2438", 0, 2, 0);
	SI[183] = 0;
	trans[6][183]	= settr(488,0,204,1,0,"break", 0, 2, 0);
	SI[205] = 0;
	trans[6][205]	= settr(510,0,204,1,0,".(goto)", 0, 2, 0);
	SI[204] = 0;
	T = trans[6][204] = settr(509,0,0,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,184,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,186,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,188,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,190,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,192,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,194,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,196,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,198,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	T = T->nxt	= settr(509,0,200,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	    T->nxt	= settr(509,0,202,0,0,"DO", 0, 2, 0);
		/* ./v4_long.never:126 */
	SI[184] = 0;
	trans[6][184]	= settr(489,0,29,67,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(67, "./v4_long.never", 127);
	SI[185] = 0;
	trans[6][185]	= settr(490,0,29,1,0,"goto accept_S1401", 0, 2, 0);
	SI[186] = 0;
	trans[6][186]	= settr(491,0,41,68,0,"(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(68, "./v4_long.never", 128);
	SI[187] = 0;
	trans[6][187]	= settr(492,0,41,1,0,"goto accept_S2115", 0, 2, 0);
	SI[188] = 0;
	trans[6][188]	= settr(493,0,85,69,0,"((User[Pid[6]]._p==NoException))", 1, 2, 0);
		tr_2_src(69, "./v4_long.never", 129);
	SI[189] = 0;
	trans[6][189]	= settr(494,0,85,1,0,"goto T2_S2113", 0, 2, 0);
	SI[190] = 0;
	trans[6][190]	= settr(495,0,125,70,0,"((User[Pid[6]]._p==URequestSent))", 1, 2, 0);
		tr_2_src(70, "./v4_long.never", 130);
	SI[191] = 0;
	trans[6][191]	= settr(496,0,125,1,0,"goto T0_S2115", 0, 2, 0);
	SI[192] = 0;
	trans[6][192]	= settr(497,0,143,71,0,"((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(71, "./v4_long.never", 131);
	SI[193] = 0;
	trans[6][193]	= settr(498,0,143,1,0,"goto T0_S2442", 0, 2, 0);
	SI[194] = 0;
	trans[6][194]	= settr(499,0,152,72,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))", 1, 2, 0);
		tr_2_src(72, "./v4_long.never", 132);
	SI[195] = 0;
	trans[6][195]	= settr(500,0,152,1,0,"goto T0_S2582", 0, 2, 0);
	SI[196] = 0;
	trans[6][196]	= settr(501,0,132,73,0,"((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(73, "./v4_long.never", 133);
	SI[197] = 0;
	trans[6][197]	= settr(502,0,132,1,0,"goto T0_S2412", 0, 2, 0);
	SI[198] = 0;
	trans[6][198]	= settr(503,0,160,74,0,"(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(74, "./v4_long.never", 134);
	SI[199] = 0;
	trans[6][199]	= settr(504,0,160,1,0,"goto T0_S2439", 0, 2, 0);
	SI[200] = 0;
	trans[6][200]	= settr(505,0,181,1,0,"(1)", 0, 2, 0);
	SI[201] = 0;
	trans[6][201]	= settr(506,0,181,1,0,"goto T0_S2438", 0, 2, 0);
	SI[202] = 0;
	trans[6][202]	= settr(507,0,204,1,0,"(1)", 0, 2, 0);
	SI[203] = 0;
	trans[6][203]	= settr(508,0,204,1,0,"goto T0_S1", 0, 2, 0);
	SI[206] = 0;
	trans[6][206]	= settr(511,0,207,1,0,"break", 0, 2, 0);
	SI[207] = 1;
	trans[6][207]	= settr(512,0,208,1,0,"(1)", 0, 2, 0);
	SI[208] = 0;
	trans[6][208]	= settr(513,0,0,75,75,"-end-", 0, 3500, 0);
		tr_2_src(75, "./v4_long.never", 140);

 sicnt = (int *) emalloc(209*sizeof(int));

for(i=0;i<209;i++)	 sicnt[i]=0;xspinflag = 1;numberofbastates = 209;
	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(13*sizeof(Trans *));

	T = trans[ 5][11] = settr(304,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:788 */
	T->nxt	= settr(304,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:788 */
	trans[5][1]	= settr(294,2,2,76,76,"Pid[0] = run transport(0,toTransportU[0],toClientL)", 1, 2, 0);
		tr_2_src(76, "giop3.pr", 789);
	trans[5][2]	= settr(295,2,3,77,77,"Pid[1] = run transport(1,toTransportU[1],toAgentL[1])", 1, 2, 0);
		tr_2_src(77, "giop3.pr", 790);
	trans[5][3]	= settr(296,2,4,78,78,"Pid[2] = run transport(2,toTransportU[2],toAgentL[2])", 1, 2, 0);
		tr_2_src(78, "giop3.pr", 791);
	trans[5][4]	= settr(297,2,5,79,79,"Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])", 1, 2, 0);
		tr_2_src(79, "giop3.pr", 793);
	trans[5][5]	= settr(298,2,6,80,80,"Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])", 1, 2, 0);
		tr_2_src(80, "giop3.pr", 795);
	trans[5][6]	= settr(299,2,7,81,81,"Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])", 1, 2, 0);
		tr_2_src(81, "giop3.pr", 796);
	trans[5][7]	= settr(300,2,8,82,82,"Pid[6] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(82, "giop3.pr", 798);
	trans[5][8]	= settr(301,2,9,83,83,"Pid[7] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(83, "giop3.pr", 799);
	trans[5][9]	= settr(302,2,10,84,84,"Pid[8] = run Server(1,0)", 1, 2, 0);
		tr_2_src(84, "giop3.pr", 801);
	trans[5][10]	= settr(303,0,12,85,85,"Pid[9] = run Server(2,1)", 1, 2, 0);
		tr_2_src(85, "giop3.pr", 802);
	trans[5][12]	= settr(305,0,0,86,86,"-end-", 0, 3500, 0);
		tr_2_src(86, "giop3.pr", 805);

	/* proctype 4: transport */

	trans[4] = (Trans **) emalloc(38*sizeof(Trans *));

	trans[4][35]	= settr(291,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[4][34] = settr(290,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:713 */
	T = T->nxt	= settr(290,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.pr:713 */
	    T->nxt	= settr(290,0,16,0,0,"DO", 0, 2, 0);
		/* giop3.pr:713 */
	trans[4][1]	= settr(257,0,2,87,87,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(87, "giop3.pr", 714);
	trans[4][2]	= settr(258,0,7,88,88,"toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 20, 0);
		tr_2_src(88, "giop3.pr", 722);
	T = trans[4][7] = settr(263,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:724 */
	T = T->nxt	= settr(263,0,3,0,0,"IF", 0, 2, 0);
		/* giop3.pr:724 */
	    T->nxt	= settr(263,0,5,0,0,"IF", 0, 2, 0);
		/* giop3.pr:724 */
	trans[4][3]	= settr(259,0,4,89,89,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(89, "giop3.pr", 725);
	trans[4][4]	= settr(260,0,14,90,90,"connId[dstport] = ((connId[dstport]+1)%8)", 0, 2, 0);
		tr_2_src(90, "giop3.pr", 726);
	trans[4][8]	= settr(264,0,14,1,0,".(goto)", 0, 2, 0);
	trans[4][5]	= settr(261,0,6,91,91,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(91, "giop3.pr", 727);
	trans[4][6]	= settr(262,0,14,1,0,"(1)", 0, 2, 0);
	T = trans[4][14] = settr(270,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:733 */
	T = T->nxt	= settr(270,0,9,0,0,"IF", 0, 2, 0);
		/* giop3.pr:733 */
	    T->nxt	= settr(270,0,12,0,0,"IF", 0, 2, 0);
		/* giop3.pr:733 */
	trans[4][9]	= settr(265,0,10,92,0,"(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])", 1, 2, 0);
		tr_2_src(92, "giop3.pr", 734);
	trans[4][10]	= settr(266,0,27,93,93,"savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 523, 0);
		tr_2_src(93, "giop3.pr", 735);
	trans[4][11]	= settr(267,0,27,1,0,"goto resume", 0, 2, 0);
	trans[4][15]	= settr(271,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][12]	= settr(268,0,13,2,0,"else", 0, 2, 0);
	trans[4][13]	= settr(269,0,34,1,0,"(1)", 0, 2, 0);
	trans[4][16]	= settr(272,0,27,94,94,"toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 520, 0);
		tr_2_src(94, "giop3.pr", 741);
	T = trans[4][27] = settr(283,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:750 */
	T = T->nxt	= settr(283,0,17,0,0,"IF", 0, 2, 0);
		/* giop3.pr:750 */
	    T->nxt	= settr(283,0,25,0,0,"IF", 0, 2, 0);
		/* giop3.pr:750 */
	trans[4][17]	= settr(273,0,23,95,0,"((rcvConnId==connId[srcport]))", 0, 2, 0);
		tr_2_src(95, "giop3.pr", 752);
	T = trans[4][23] = settr(279,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:753 */
	T = T->nxt	= settr(279,0,18,0,0,"IF", 0, 2, 0);
		/* giop3.pr:753 */
	    T->nxt	= settr(279,0,19,0,0,"IF", 0, 2, 0);
		/* giop3.pr:753 */
	trans[4][18]	= settr(274,0,32,96,96,"uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 22, 0);
		tr_2_src(96, "giop3.pr", 754);
	trans[4][24]	= settr(280,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][19]	= settr(275,0,20,97,0,"(timeout)", 1, 3000, 0);
		tr_2_src(97, "giop3.pr", 755);
	trans[4][20]	= settr(276,0,21,98,98,"savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 23, 0);
		tr_2_src(98, "giop3.pr", 763);
	trans[4][21]	= settr(277,0,2,99,99,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(99, "giop3.pr", 764);
	trans[4][22]	= settr(278,0,2,1,0,"goto preempt", 0, 2, 0);
	trans[4][28]	= settr(284,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][25]	= settr(281,0,26,100,100,"((rcvConnId!=connId[srcport]))", 0, 2, 0);
		tr_2_src(100, "giop3.pr", 768);
	trans[4][26]	= settr(282,0,32,101,0,"printf('Old message encountered -> discarded\\n')", 0, 2, 0);
		tr_2_src(101, "giop3.pr", 769);
	T = trans[4][32] = settr(288,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:773 */
	T = T->nxt	= settr(288,0,29,0,0,"IF", 0, 2, 0);
		/* giop3.pr:773 */
	    T->nxt	= settr(288,0,31,0,0,"IF", 0, 2, 0);
		/* giop3.pr:773 */
	trans[4][29]	= settr(285,0,30,102,102,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(102, "giop3.pr", 774);
	trans[4][30]	= settr(286,0,34,103,103,"connId[srcport] = ((connId[srcport]+1)%8)", 0, 2, 0);
		tr_2_src(103, "giop3.pr", 775);
	trans[4][33]	= settr(289,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][31]	= settr(287,0,34,104,104,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(104, "giop3.pr", 776);
	trans[4][36]	= settr(292,0,37,1,0,"break", 0, 2, 0);
	trans[4][37]	= settr(293,0,0,105,105,"-end-", 0, 3500, 0);
		tr_2_src(105, "giop3.pr", 781);

	/* proctype 3: GIOPAgent */

	trans[3] = (Trans **) emalloc(85*sizeof(Trans *));

	trans[3][82]	= settr(254,0,81,1,0,".(goto)", 0, 2, 0);
	T = trans[3][81] = settr(253,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	T = T->nxt	= settr(253,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	T = T->nxt	= settr(253,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	T = T->nxt	= settr(253,0,7,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	T = T->nxt	= settr(253,0,39,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	    T->nxt	= settr(253,0,73,0,0,"DO", 0, 2, 0);
		/* giop3.pr:514 */
	trans[3][1]	= settr(173,0,4,106,106,"uin?SRegister,objKey,_,_", 1, 515, 0);
		tr_2_src(106, "giop3.pr", 515);
		tr_2_src(107, "giop3.pr", 517);
/*->*/	trans[3][4]	= settr(176,32,81,107,107,"D_STEP517", 1, 2, 0);
	trans[3][5]	= settr(177,0,6,108,108,"uin?SMigrateReq,objKey,clPort,_", 1, 515, 0);
		tr_2_src(108, "giop3.pr", 527);
	trans[3][6]	= settr(178,0,81,109,109,"registered[objKey] = clPort", 0, 2, 0);
		tr_2_src(109, "giop3.pr", 532);
	trans[3][7]	= settr(179,0,11,110,110,"lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(110, "giop3.pr", 536);
		tr_2_src(111, "giop3.pr", 541);
/*->*/	trans[3][11]	= settr(183,32,37,111,111,"D_STEP541", 1, 2, 0);
	T = trans[3][37] = settr(209,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:548 */
	T = T->nxt	= settr(209,0,12,0,0,"IF", 0, 2, 0);
		/* giop3.pr:548 */
	    T->nxt	= settr(209,0,21,0,0,"IF", 0, 2, 0);
		/* giop3.pr:548 */
	trans[3][12]	= settr(184,0,15,112,0,"((registered[objKey]==port))", 0, 2, 0);
		tr_2_src(112, "giop3.pr", 549);
		tr_2_src(113, "giop3.pr", 554);
/*->*/	trans[3][15]	= settr(187,32,16,113,113,"D_STEP554", 1, 2, 0);
	trans[3][16]	= settr(188,0,20,114,114,"uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag", 1, 16, 0);
		tr_2_src(114, "giop3.pr", 560);
		tr_2_src(115, "giop3.pr", 563);
/*->*/	trans[3][20]	= settr(192,32,81,115,115,"D_STEP563", 1, 2, 0);
	trans[3][38]	= settr(210,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][21]	= settr(193,0,33,116,0,"((registered[objKey]!=port))", 0, 2, 0);
		tr_2_src(116, "giop3.pr", 571);
	T = trans[3][33] = settr(205,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:573 */
	T = T->nxt	= settr(205,0,22,0,0,"IF", 0, 2, 0);
		/* giop3.pr:573 */
	    T->nxt	= settr(205,0,27,0,0,"IF", 0, 2, 0);
		/* giop3.pr:573 */
	trans[3][22]	= settr(194,0,26,117,0,"((registered[objKey]==255))", 0, 2, 0);
		tr_2_src(117, "giop3.pr", 574);
		tr_2_src(118, "giop3.pr", 576);
/*->*/	trans[3][26]	= settr(198,32,35,118,118,"D_STEP576", 0, 2, 0);
	trans[3][34]	= settr(206,0,35,1,0,".(goto)", 0, 2, 0);
	trans[3][27]	= settr(199,0,32,2,0,"else", 0, 2, 0);
		tr_2_src(119, "giop3.pr", 585);
/*->*/	trans[3][32]	= settr(204,32,35,119,119,"D_STEP585", 0, 2, 0);
	trans[3][35]	= settr(207,0,36,120,120,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(120, "giop3.pr", 594);
	trans[3][36]	= settr(208,0,81,121,121,"numRepliesSent[port] = (numRepliesSent[port]+1)", 1, 2, 0);
		tr_2_src(121, "giop3.pr", 595);
	trans[3][39]	= settr(211,0,40,122,122,"uin?SReply,objKey,reqId,clPort", 1, 515, 0);
		tr_2_src(122, "giop3.pr", 598);
	trans[3][40]	= settr(212,0,41,123,0,"assert((requested[reqId]!=0))", 0, 2, 0);
		tr_2_src(123, "giop3.pr", 604);
	trans[3][41]	= settr(213,0,58,124,124,"sreply_reqId = reqId", 1, 2, 0);
		tr_2_src(124, "giop3.pr", 606);
	T = trans[3][58] = settr(230,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:609 */
	T = T->nxt	= settr(230,0,42,0,0,"IF", 0, 2, 0);
		/* giop3.pr:609 */
	    T->nxt	= settr(230,0,47,0,0,"IF", 0, 2, 0);
		/* giop3.pr:609 */
	trans[3][42]	= settr(214,0,46,125,0,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(125, "giop3.pr", 610);
		tr_2_src(126, "giop3.pr", 613);
/*->*/	trans[3][46]	= settr(218,32,71,126,126,"D_STEP613", 1, 2, 0);
	trans[3][59]	= settr(231,0,71,1,0,".(goto)", 0, 2, 0);
	trans[3][47]	= settr(219,0,51,127,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(127, "giop3.pr", 620);
		tr_2_src(128, "giop3.pr", 621);
/*->*/	trans[3][51]	= settr(223,32,52,128,128,"D_STEP621", 0, 2, 0);
	trans[3][52]	= settr(224,0,57,129,129,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(129, "giop3.pr", 627);
		tr_2_src(130, "giop3.pr", 629);
/*->*/	trans[3][57]	= settr(229,32,71,130,130,"D_STEP629", 1, 2, 0);
	T = trans[3][71] = settr(243,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:641 */
	T = T->nxt	= settr(243,0,60,0,0,"IF", 0, 2, 0);
		/* giop3.pr:641 */
	    T->nxt	= settr(243,0,70,0,0,"IF", 0, 2, 0);
		/* giop3.pr:641 */
	trans[3][60]	= settr(232,0,68,131,0,"((numOutstandingReqs==0))", 0, 2, 0);
		tr_2_src(131, "giop3.pr", 642);
	T = trans[3][68] = settr(240,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:643 */
	T = T->nxt	= settr(240,0,61,0,0,"IF", 0, 2, 0);
		/* giop3.pr:643 */
	    T->nxt	= settr(240,0,67,0,0,"IF", 0, 2, 0);
		/* giop3.pr:643 */
	trans[3][61]	= settr(233,0,62,132,132,"((connState==1))", 0, 2, 0);
		tr_2_src(132, "giop3.pr", 644);
	trans[3][62]	= settr(234,0,66,133,133,"lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(133, "giop3.pr", 647);
		tr_2_src(134, "giop3.pr", 649);
/*->*/	trans[3][66]	= settr(238,32,81,134,134,"D_STEP649", 1, 2, 0);
	trans[3][69]	= settr(241,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][67]	= settr(239,0,81,135,0,"((connState!=1))", 0, 2, 0);
		tr_2_src(135, "giop3.pr", 655);
	trans[3][72]	= settr(244,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][70]	= settr(242,0,81,136,0,"((numOutstandingReqs!=0))", 0, 2, 0);
		tr_2_src(136, "giop3.pr", 659);
	trans[3][73]	= settr(245,0,74,137,137,"lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(137, "giop3.pr", 664);
	trans[3][74]	= settr(246,0,79,138,138,"reqId = msg.mhdr.request_id", 0, 2, 0);
		tr_2_src(138, "giop3.pr", 665);
	T = trans[3][79] = settr(251,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:666 */
	T = T->nxt	= settr(251,0,75,0,0,"IF", 0, 2, 0);
		/* giop3.pr:666 */
	T = T->nxt	= settr(251,0,77,0,0,"IF", 0, 2, 0);
		/* giop3.pr:666 */
	    T->nxt	= settr(251,0,78,0,0,"IF", 0, 2, 0);
		/* giop3.pr:666 */
	trans[3][75]	= settr(247,0,76,139,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(139, "giop3.pr", 667);
	trans[3][76]	= settr(248,0,81,140,140,"requested[reqId] = 2", 0, 2, 0);
		tr_2_src(140, "giop3.pr", 670);
	trans[3][80]	= settr(252,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][77]	= settr(249,0,81,141,141,"((requested[reqId]==0))", 0, 2, 0);
		tr_2_src(141, "giop3.pr", 672);
	trans[3][78]	= settr(250,0,81,142,142,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(142, "giop3.pr", 675);
	trans[3][83]	= settr(255,0,84,1,0,"break", 0, 2, 0);
	trans[3][84]	= settr(256,0,0,143,143,"-end-", 0, 3500, 0);
		tr_2_src(143, "giop3.pr", 681);

	/* proctype 2: Server */

	trans[2] = (Trans **) emalloc(50*sizeof(Trans *));

	trans[2][1]	= settr(124,0,46,144,144,"toAgentU[port]!SRegister,objKey,port,0", 1, 13, 0);
		tr_2_src(144, "giop3.pr", 422);
	trans[2][47]	= settr(170,0,46,1,0,".(goto)", 0, 2, 0);
	T = trans[2][46] = settr(169,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:425 */
	T = T->nxt	= settr(169,0,2,0,0,"DO", 0, 2, 0);
		/* giop3.pr:425 */
	    T->nxt	= settr(169,0,13,0,0,"DO", 0, 2, 0);
		/* giop3.pr:425 */
	trans[2][2]	= settr(125,0,10,145,145,"toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,tag", 1, 512, 0);
		tr_2_src(145, "giop3.pr", 427);
	T = trans[2][10] = settr(133,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:430 */
	T = T->nxt	= settr(133,0,3,0,0,"IF", 0, 2, 0);
		/* giop3.pr:430 */
	T = T->nxt	= settr(133,0,6,0,0,"IF", 0, 2, 0);
		/* giop3.pr:430 */
	    T->nxt	= settr(133,0,9,0,0,"IF", 0, 2, 0);
		/* giop3.pr:430 */
	trans[2][3]	= settr(126,0,4,146,146,"((tag==Pid[6]))", 1, 2, 0);
		tr_2_src(146, "giop3.pr", 431);
	trans[2][4]	= settr(127,0,5,147,147,"user6Processed = (user6Processed+1)", 1, 2, 0);
		tr_2_src(147, "giop3.pr", 431);
	trans[2][5]	= settr(128,0,12,1,0,"(1)", 1, 2, 0);
	trans[2][11]	= settr(134,0,12,1,0,".(goto)", 0, 2, 0);
	trans[2][6]	= settr(129,0,7,148,148,"((tag==Pid[7]))", 1, 2, 0);
		tr_2_src(148, "giop3.pr", 433);
	trans[2][7]	= settr(130,0,8,149,149,"user7Processed = (user7Processed+1)", 1, 2, 0);
		tr_2_src(149, "giop3.pr", 433);
	trans[2][8]	= settr(131,0,12,1,0,"(1)", 0, 2, 0);
	trans[2][9]	= settr(132,0,12,2,0,"else", 0, 2, 0);
	trans[2][12]	= settr(135,0,46,150,150,"toAgentU[port]!SReply,objKey,opaqueData,opaqueData2", 1, 13, 0);
		tr_2_src(150, "giop3.pr", 440);
	trans[2][13]	= settr(136,0,14,151,0,"((numMigrations<2))", 0, 2, 0);
		tr_2_src(151, "giop3.pr", 442);
	trans[2][14]	= settr(137,0,21,152,152,"numMigrations = (numMigrations+1)", 0, 2, 0);
		tr_2_src(152, "giop3.pr", 448);
	T = trans[2][21] = settr(144,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:449 */
	T = T->nxt	= settr(144,0,15,0,0,"IF", 0, 2, 0);
		/* giop3.pr:449 */
	T = T->nxt	= settr(144,0,17,0,0,"IF", 0, 2, 0);
		/* giop3.pr:449 */
	    T->nxt	= settr(144,0,19,0,0,"IF", 0, 2, 0);
		/* giop3.pr:449 */
	trans[2][15]	= settr(138,0,16,153,0,"((port==1))", 0, 2, 0);
		tr_2_src(153, "giop3.pr", 450);
	trans[2][16]	= settr(139,0,23,154,154,"newport = 2", 0, 2, 0);
		tr_2_src(154, "giop3.pr", 451);
	trans[2][22]	= settr(145,0,23,1,0,".(goto)", 0, 2, 0);
	trans[2][17]	= settr(140,0,18,155,0,"((port==2))", 0, 2, 0);
		tr_2_src(155, "giop3.pr", 452);
	trans[2][18]	= settr(141,0,23,156,156,"newport = 1", 0, 2, 0);
		tr_2_src(156, "giop3.pr", 453);
	trans[2][19]	= settr(142,0,20,2,0,"else", 0, 2, 0);
	trans[2][20]	= settr(143,0,23,157,0,"assert(0)", 0, 2, 0);
		tr_2_src(157, "giop3.pr", 455);
	trans[2][23]	= settr(146,0,24,158,158,"toAgentU[newport]!SRegister,objKey,port,0", 1, 13, 0);
		tr_2_src(158, "giop3.pr", 460);
	trans[2][24]	= settr(147,0,42,159,159,"toAgentU[port]!SMigrateReq,objKey,newport,0", 1, 13, 0);
		tr_2_src(159, "giop3.pr", 465);
	trans[2][43]	= settr(166,0,42,1,0,".(goto)", 0, 2, 0);
	T = trans[2][42] = settr(165,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:473 */
	    T->nxt	= settr(165,0,25,0,0,"DO", 0, 2, 0);
		/* giop3.pr:473 */
	trans[2][25]	= settr(148,0,40,1,0,"(1)", 0, 2, 0);
	T = trans[2][40] = settr(163,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:475 */
	T = T->nxt	= settr(163,0,26,0,0,"IF", 0, 2, 0);
		/* giop3.pr:475 */
	    T->nxt	= settr(163,0,38,0,0,"IF", 0, 2, 0);
		/* giop3.pr:475 */
	trans[2][26]	= settr(149,0,27,160,0,"(toServer[port]??[SRequest,eval(objKey)])", 1, 2, 0);
		tr_2_src(160, "giop3.pr", 476);
	trans[2][27]	= settr(150,0,35,161,161,"toServer[port]??SRequest,eval(objKey),opaqueData,opaqueData2,tag", 1, 512, 0);
		tr_2_src(161, "giop3.pr", 477);
	T = trans[2][35] = settr(158,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:479 */
	T = T->nxt	= settr(158,0,28,0,0,"IF", 0, 2, 0);
		/* giop3.pr:479 */
	T = T->nxt	= settr(158,0,31,0,0,"IF", 0, 2, 0);
		/* giop3.pr:479 */
	    T->nxt	= settr(158,0,34,0,0,"IF", 0, 2, 0);
		/* giop3.pr:479 */
	trans[2][28]	= settr(151,0,29,162,162,"((tag==Pid[6]))", 1, 2, 0);
		tr_2_src(162, "giop3.pr", 480);
	trans[2][29]	= settr(152,0,30,163,163,"user6Processed = (user6Processed+1)", 1, 2, 0);
		tr_2_src(163, "giop3.pr", 480);
	trans[2][30]	= settr(153,0,37,1,0,"(1)", 1, 2, 0);
	trans[2][36]	= settr(159,0,37,1,0,".(goto)", 0, 2, 0);
	trans[2][31]	= settr(154,0,32,164,164,"((tag==Pid[7]))", 1, 2, 0);
		tr_2_src(164, "giop3.pr", 482);
	trans[2][32]	= settr(155,0,33,165,165,"user7Processed = (user7Processed+1)", 1, 2, 0);
		tr_2_src(165, "giop3.pr", 482);
	trans[2][33]	= settr(156,0,37,1,0,"(1)", 0, 2, 0);
	trans[2][34]	= settr(157,0,37,2,0,"else", 0, 2, 0);
	trans[2][37]	= settr(160,0,42,166,166,"toAgentU[port]!SReply,objKey,opaqueData,opaqueData2", 1, 13, 0);
		tr_2_src(166, "giop3.pr", 488);
	trans[2][41]	= settr(164,0,42,1,0,".(goto)", 0, 2, 0);
	trans[2][38]	= settr(161,0,45,2,0,"else", 0, 2, 0);
	trans[2][39]	= settr(162,0,45,1,0,"goto :b6", 0, 2, 0);
	trans[2][44]	= settr(167,0,45,1,0,"break", 0, 2, 0);
	trans[2][45]	= settr(168,0,46,167,167,"port = newport", 0, 2, 0);
		tr_2_src(167, "giop3.pr", 495);
	trans[2][48]	= settr(171,0,49,1,0,"break", 0, 2, 0);
	trans[2][49]	= settr(172,0,0,168,168,"-end-", 0, 3500, 0);
		tr_2_src(168, "giop3.pr", 498);

	/* proctype 1: GIOPClient */

	trans[1] = (Trans **) emalloc(89*sizeof(Trans *));

	trans[1][86]	= settr(121,0,85,1,0,".(goto)", 0, 2, 0);
	T = trans[1][85] = settr(120,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:225 */
	T = T->nxt	= settr(120,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.pr:225 */
	T = T->nxt	= settr(120,0,30,0,0,"DO", 0, 2, 0);
		/* giop3.pr:225 */
	    T->nxt	= settr(120,0,57,0,0,"DO", 0, 2, 0);
		/* giop3.pr:225 */
	trans[1][1]	= settr(36,0,4,169,169,"uin?URequest,tag,objref.objKey,objref.port", 1, 508, 0);
		tr_2_src(169, "giop3.pr", 226);
		tr_2_src(170, "giop3.pr", 232);
/*->*/	trans[1][4]	= settr(39,32,10,170,170,"D_STEP232", 0, 2, 0);
	trans[1][11]	= settr(46,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[1][10] = settr(45,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:238 */
	T = T->nxt	= settr(45,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.pr:238 */
	    T->nxt	= settr(45,0,8,0,0,"DO", 0, 2, 0);
		/* giop3.pr:238 */
	trans[1][5]	= settr(40,0,6,171,0,"((usedReqId[reqId]!=0))", 1, 2, 0);
		tr_2_src(171, "giop3.pr", 239);
	trans[1][6]	= settr(41,0,7,172,172,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(172, "giop3.pr", 240);
	trans[1][7]	= settr(42,0,10,173,0,"assert((reqId<4))", 0, 2, 0);
		tr_2_src(173, "giop3.pr", 241);
	trans[1][8]	= settr(43,0,13,174,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(174, "giop3.pr", 243);
	trans[1][9]	= settr(44,0,13,1,0,"goto :b3", 0, 2, 0);
	trans[1][12]	= settr(47,0,13,1,0,"break", 0, 2, 0);
	trans[1][13]	= settr(48,0,21,175,175,"usedReqId[reqId] = 1", 1, 2, 0);
		tr_2_src(175, "giop3.pr", 248);
		tr_2_src(176, "giop3.pr", 249);
/*->*/	trans[1][21]	= settr(56,32,22,176,176,"D_STEP249", 1, 2, 0);
	trans[1][22]	= settr(57,0,28,177,177,"lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(177, "giop3.pr", 263);
	T = trans[1][28] = settr(63,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:268 */
	T = T->nxt	= settr(63,0,23,0,0,"IF", 0, 2, 0);
		/* giop3.pr:268 */
	    T->nxt	= settr(63,0,24,0,0,"IF", 0, 2, 0);
		/* giop3.pr:268 */
	trans[1][23]	= settr(58,0,85,1,0,"(1)", 0, 2, 0);
	trans[1][29]	= settr(64,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][24]	= settr(59,0,25,1,0,"(1)", 0, 2, 0);
	trans[1][25]	= settr(60,0,26,178,178,"lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(178, "giop3.pr", 275);
	trans[1][26]	= settr(61,0,27,179,179,"usedReqId[reqId] = 2", 1, 2, 0);
		tr_2_src(179, "giop3.pr", 277);
	trans[1][27]	= settr(62,0,85,180,180,"uout!UReply,tag,3", 1, 9, 0);
		tr_2_src(180, "giop3.pr", 280);
	trans[1][30]	= settr(65,0,34,181,181,"lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(181, "giop3.pr", 283);
		tr_2_src(182, "giop3.pr", 288);
/*->*/	trans[1][34]	= settr(69,32,55,182,182,"D_STEP288", 1, 2, 0);
	T = trans[1][55] = settr(90,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:295 */
	T = T->nxt	= settr(90,0,35,0,0,"IF", 0, 2, 0);
		/* giop3.pr:295 */
	    T->nxt	= settr(90,0,49,0,0,"IF", 0, 2, 0);
		/* giop3.pr:295 */
	trans[1][35]	= settr(70,0,47,183,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(183, "giop3.pr", 296);
	T = trans[1][47] = settr(82,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:299 */
	T = T->nxt	= settr(82,0,36,0,0,"IF", 0, 2, 0);
		/* giop3.pr:299 */
	    T->nxt	= settr(82,0,40,0,0,"IF", 0, 2, 0);
		/* giop3.pr:299 */
	trans[1][36]	= settr(71,0,38,184,0,"((msg.mhdr.reply_status==4))", 0, 2, 0);
		tr_2_src(184, "giop3.pr", 300);
		tr_2_src(185, "giop3.pr", 305);
/*->*/	trans[1][38]	= settr(73,32,39,185,185,"D_STEP305", 0, 2, 0);
	trans[1][39]	= settr(74,0,85,186,186,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(186, "giop3.pr", 309);
	trans[1][48]	= settr(83,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][40]	= settr(75,0,41,2,0,"else", 0, 2, 0);
	trans[1][41]	= settr(76,0,46,187,187,"uout!UReply,tags[reqId],msg.mhdr.reply_status", 1, 9, 0);
		tr_2_src(187, "giop3.pr", 314);
		tr_2_src(188, "giop3.pr", 317);
/*->*/	trans[1][46]	= settr(81,32,85,188,188,"D_STEP317", 1, 2, 0);
	trans[1][56]	= settr(91,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][49]	= settr(84,0,54,189,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(189, "giop3.pr", 327);
		tr_2_src(190, "giop3.pr", 329);
/*->*/	trans[1][54]	= settr(89,32,85,190,190,"D_STEP329", 1, 2, 0);
	trans[1][57]	= settr(92,0,58,191,191,"lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(191, "giop3.pr", 338);
	trans[1][58]	= settr(93,0,82,192,192,"reqId = 0", 0, 2, 0);
		tr_2_src(192, "giop3.pr", 347);
	trans[1][83]	= settr(118,0,82,1,0,".(goto)", 0, 2, 0);
	T = trans[1][82] = settr(117,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.pr:348 */
	T = T->nxt	= settr(117,0,59,0,0,"DO", 0, 2, 0);
		/* giop3.pr:348 */
	    T->nxt	= settr(117,0,61,0,0,"DO", 0, 2, 0);
		/* giop3.pr:348 */
	trans[1][59]	= settr(94,0,85,193,193,"((reqId==4))", 0, 2, 0);
		tr_2_src(193, "giop3.pr", 349);
	trans[1][60]	= settr(95,0,85,1,0,"goto :b4", 0, 2, 0);
	trans[1][61]	= settr(96,0,79,194,0,"((reqId!=4))", 0, 2, 0);
		tr_2_src(194, "giop3.pr", 352);
	T = trans[1][79] = settr(114,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:353 */
	T = T->nxt	= settr(114,0,62,0,0,"IF", 0, 2, 0);
		/* giop3.pr:353 */
	    T->nxt	= settr(114,0,78,0,0,"IF", 0, 2, 0);
		/* giop3.pr:353 */
	trans[1][62]	= settr(97,0,76,195,0,"((objRefs[reqId].port==svrPort))", 0, 2, 0);
		tr_2_src(195, "giop3.pr", 354);
	T = trans[1][76] = settr(111,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:356 */
	T = T->nxt	= settr(111,0,63,0,0,"IF", 0, 2, 0);
		/* giop3.pr:356 */
	T = T->nxt	= settr(111,0,69,0,0,"IF", 0, 2, 0);
		/* giop3.pr:356 */
	    T->nxt	= settr(111,0,75,0,0,"IF", 0, 2, 0);
		/* giop3.pr:356 */
	trans[1][63]	= settr(98,0,67,196,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(196, "giop3.pr", 357);
		tr_2_src(197, "giop3.pr", 364);
/*->*/	trans[1][67]	= settr(102,32,68,197,197,"D_STEP364", 0, 2, 0);
	trans[1][68]	= settr(103,0,81,198,198,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(198, "giop3.pr", 369);
	trans[1][77]	= settr(112,0,81,1,0,".(goto)", 0, 2, 0);
	trans[1][69]	= settr(104,0,74,199,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(199, "giop3.pr", 372);
		tr_2_src(200, "giop3.pr", 376);
/*->*/	trans[1][74]	= settr(109,32,81,200,200,"D_STEP376", 1, 2, 0);
	trans[1][75]	= settr(110,0,81,201,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(201, "giop3.pr", 383);
	trans[1][80]	= settr(115,0,81,1,0,".(goto)", 0, 2, 0);
	trans[1][78]	= settr(113,0,81,202,0,"((objRefs[reqId].port!=svrPort))", 0, 2, 0);
		tr_2_src(202, "giop3.pr", 388);
	trans[1][81]	= settr(116,0,82,203,203,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(203, "giop3.pr", 391);
	trans[1][84]	= settr(119,0,85,1,0,"break", 0, 2, 0);
	trans[1][87]	= settr(122,0,88,1,0,"break", 0, 2, 0);
	trans[1][88]	= settr(123,0,0,204,204,"-end-", 0, 3500, 0);
		tr_2_src(204, "giop3.pr", 396);

	/* proctype 0: User */

	trans[0] = (Trans **) emalloc(37*sizeof(Trans *));

	T = trans[ 0][11] = settr(10,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:145 */
	T->nxt	= settr(10,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:145 */
	trans[0][1]	= settr(0,2,7,205,205,"i = 0", 1, 2, 0);
		tr_2_src(205, "giop3.pr", 146);
	trans[0][8]	= settr(7,2,7,1,0,".(goto)", 1, 2, 0);
	T = trans[0][7] = settr(6,2,0,0,0,"DO", 1, 2, 0);
		/* giop3.pr:147 */
	T = T->nxt	= settr(6,2,2,0,0,"DO", 1, 2, 0);
		/* giop3.pr:147 */
	    T->nxt	= settr(6,2,5,0,0,"DO", 1, 2, 0);
		/* giop3.pr:147 */
	trans[0][2]	= settr(1,2,3,206,0,"((i<2))", 1, 2, 0);
		tr_2_src(206, "giop3.pr", 148);
	trans[0][3]	= settr(2,2,4,207,0,"((gPublished[i]!=255))", 1, 2, 0);
		tr_2_src(207, "giop3.pr", 149);
	trans[0][4]	= settr(3,2,7,208,208,"i = (i+1)", 1, 2, 0);
		tr_2_src(208, "giop3.pr", 150);
	trans[0][5]	= settr(4,2,9,209,209,"((i==2))", 1, 2, 0);
		tr_2_src(209, "giop3.pr", 151);
	trans[0][6]	= settr(5,2,9,1,0,"goto :b0", 1, 2, 0);
	trans[0][9]	= settr(8,2,10,1,0,"break", 1, 2, 0);
	trans[0][10]	= settr(9,0,23,210,210,"i = 0", 1, 2, 0);
		tr_2_src(210, "giop3.pr", 154);
	T = trans[ 0][23] = settr(22,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:161 */
	T->nxt	= settr(22,2,12,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.pr:161 */
	trans[0][12]	= settr(11,2,19,211,211,"i = 0", 1, 2, 0);
		tr_2_src(211, "giop3.pr", 162);
	trans[0][20]	= settr(19,2,19,1,0,".(goto)", 1, 2, 0);
	T = trans[0][19] = settr(18,2,0,0,0,"DO", 1, 2, 0);
		/* giop3.pr:163 */
	T = T->nxt	= settr(18,2,13,0,0,"DO", 1, 2, 0);
		/* giop3.pr:163 */
	    T->nxt	= settr(18,2,17,0,0,"DO", 1, 2, 0);
		/* giop3.pr:163 */
	trans[0][13]	= settr(12,2,14,212,0,"((i<=(2-1)))", 1, 2, 0);
		tr_2_src(212, "giop3.pr", 164);
	trans[0][14]	= settr(13,2,15,213,213,"objref.objKey = i", 1, 2, 0);
		tr_2_src(213, "giop3.pr", 165);
	trans[0][15]	= settr(14,2,21,214,214,"objref.port = gPublished[i]", 1, 2, 0);
		tr_2_src(214, "giop3.pr", 166);
	trans[0][16]	= settr(15,2,21,1,0,"goto :b1", 1, 2, 0);
	trans[0][17]	= settr(16,2,18,215,0,"((i<(2-1)))", 1, 2, 0);
		tr_2_src(215, "giop3.pr", 168);
	trans[0][18]	= settr(17,2,19,216,216,"i = (i+1)", 1, 2, 0);
		tr_2_src(216, "giop3.pr", 169);
	trans[0][21]	= settr(20,2,22,1,0,"break", 1, 2, 0);
	trans[0][22]	= settr(21,0,24,217,217,"i = 0", 1, 2, 0);
		tr_2_src(217, "giop3.pr", 171);
	trans[0][24]	= settr(23,0,25,218,218,"lout!URequest,tag,objref.objKey,objref.port", 1, 5, 0);
		tr_2_src(218, "giop3.pr", 175);
	trans[0][25]	= settr(24,0,34,219,219,"lin?UReply,eval(tag),status", 1, 504, 0);
		tr_2_src(219, "giop3.pr", 182);
	T = trans[0][34] = settr(33,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.pr:187 */
	T = T->nxt	= settr(33,0,26,0,0,"IF", 0, 2, 0);
		/* giop3.pr:187 */
	T = T->nxt	= settr(33,0,28,0,0,"IF", 0, 2, 0);
		/* giop3.pr:187 */
	T = T->nxt	= settr(33,0,30,0,0,"IF", 0, 2, 0);
		/* giop3.pr:187 */
	    T->nxt	= settr(33,0,32,0,0,"IF", 0, 2, 0);
		/* giop3.pr:187 */
	trans[0][26]	= settr(25,0,27,220,220,"((status==1))", 1, 2, 0);
		tr_2_src(220, "giop3.pr", 188);
	trans[0][27]	= settr(26,0,36,221,0,"printf('Request satisfied\\n')", 1, 2, 0);
		tr_2_src(221, "giop3.pr", 190);
	trans[0][35]	= settr(34,0,36,1,0,".(goto)", 0, 2, 0);
	trans[0][28]	= settr(27,0,29,222,222,"((status==2))", 0, 2, 0);
		tr_2_src(222, "giop3.pr", 192);
	trans[0][29]	= settr(28,0,36,223,0,"printf('Request failed: user exception\\n')", 0, 2, 0);
		tr_2_src(223, "giop3.pr", 194);
	trans[0][30]	= settr(29,0,31,224,224,"((status==3))", 0, 2, 0);
		tr_2_src(224, "giop3.pr", 196);
	trans[0][31]	= settr(30,0,36,225,0,"printf('Request failed: system exception\\n')", 0, 2, 0);
		tr_2_src(225, "giop3.pr", 198);
	trans[0][32]	= settr(31,0,33,226,226,"((status==5))", 0, 2, 0);
		tr_2_src(226, "giop3.pr", 200);
	trans[0][33]	= settr(32,0,36,227,0,"printf('Request failed: object does not exist\\n')", 0, 2, 0);
		tr_2_src(227, "giop3.pr", 201);
	trans[0][36]	= settr(35,0,0,228,228,"-end-", 0, 3500, 0);
		tr_2_src(228, "giop3.pr", 203);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
