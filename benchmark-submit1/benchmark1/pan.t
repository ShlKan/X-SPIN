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

	trans[6] = (Trans **) emalloc(58*sizeof(Trans *));


  SI = (int *) emalloc(58*sizeof(int));

	SI[6] = 0;
	trans[6][6]	= settr(258,0,5,1,0,".(goto)", 0, 2, 0);
	SI[5] = 0;
	T = trans[6][5] = settr(257,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:14 */
	T = T->nxt	= settr(257,0,1,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:14 */
	    T->nxt	= settr(257,0,3,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:14 */
	SI[1] = 0;
	trans[6][1]	= settr(253,0,25,3,0,"(!((srequested[0]==1)))", 1, 2, 0);
		tr_2_src(3, "./v6b.never", 15);
	SI[2] = 0;
	trans[6][2]	= settr(254,0,25,1,0,"goto accept_S9", 0, 2, 0);
	SI[3] = 0;
	trans[6][3]	= settr(255,0,5,1,0,"(1)", 0, 2, 0);
	SI[4] = 0;
	trans[6][4]	= settr(256,0,5,1,0,"goto T0_init", 0, 2, 0);
	SI[7] = 0;
	trans[6][7]	= settr(259,0,13,1,0,"break", 0, 2, 0);
	SI[14] = 0;
	trans[6][14]	= settr(266,0,13,1,0,".(goto)", 0, 2, 0);
	SI[13] = 1;
	T = trans[6][13] = settr(265,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:19 */
	T = T->nxt	= settr(265,0,8,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:19 */
	    T->nxt	= settr(265,0,12,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:19 */
	SI[8] = 1;
	trans[6][8]	= settr(260,0,13,4,0,"(!((srequested[0]==1)))", 1, 2, 0);
		tr_2_src(4, "./v6b.never", 20);
	SI[9] = 1;
	trans[6][9]	= settr(261,0,13,1,0,"goto accept_S6", 0, 2, 0);
	T = trans[ 6][12] = settr(264,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:21 */
	T->nxt	= settr(264,2,10,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:21 */
	trans[6][10]	= settr(262,2,11,5,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(5, "./v6b.never", 21);
	trans[6][11]	= settr(263,0,13,6,0,"assert(!((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0)))))", 1, 2, 0);
		tr_2_src(6, "./v6b.never", 21);
	SI[15] = 0;
	trans[6][15]	= settr(267,0,25,1,0,"break", 0, 2, 0);
	SI[26] = 0;
	trans[6][26]	= settr(278,0,25,1,0,".(goto)", 0, 2, 0);
	SI[25] = 1;
	T = trans[6][25] = settr(277,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:24 */
	T = T->nxt	= settr(277,0,16,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:24 */
	T = T->nxt	= settr(277,0,20,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:24 */
	T = T->nxt	= settr(277,0,21,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:24 */
	    T->nxt	= settr(277,0,23,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:24 */
	SI[16] = 1;
	trans[6][16]	= settr(268,0,13,7,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(7, "./v6b.never", 25);
	SI[17] = 1;
	trans[6][17]	= settr(269,0,13,1,0,"goto accept_S6", 0, 2, 0);
	T = trans[ 6][20] = settr(272,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:26 */
	T->nxt	= settr(272,2,18,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:26 */
	trans[6][18]	= settr(270,2,19,8,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(8, "./v6b.never", 26);
	trans[6][19]	= settr(271,0,25,9,0,"assert(!((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0)))))", 1, 2, 0);
		tr_2_src(9, "./v6b.never", 26);
	SI[21] = 1;
	trans[6][21]	= settr(273,0,45,10,0,"(!((srequested[0]==1)))", 1, 2, 0);
		tr_2_src(10, "./v6b.never", 27);
	SI[22] = 1;
	trans[6][22]	= settr(274,0,45,1,0,"goto T0_S9", 0, 2, 0);
	SI[23] = 1;
	trans[6][23]	= settr(275,0,53,11,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(11, "./v6b.never", 28);
	SI[24] = 1;
	trans[6][24]	= settr(276,0,53,1,0,"goto T0_S15", 0, 2, 0);
	SI[27] = 0;
	trans[6][27]	= settr(279,0,33,1,0,"break", 0, 2, 0);
	SI[34] = 0;
	trans[6][34]	= settr(286,0,33,1,0,".(goto)", 0, 2, 0);
	SI[33] = 1;
	T = trans[6][33] = settr(285,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:31 */
	T = T->nxt	= settr(285,0,30,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:31 */
	    T->nxt	= settr(285,0,31,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:31 */
	T = trans[ 6][30] = settr(282,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:32 */
	T->nxt	= settr(282,2,28,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:32 */
	trans[6][28]	= settr(280,2,29,12,0,"((((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0)))", 1, 2, 0);
		tr_2_src(12, "./v6b.never", 32);
	trans[6][29]	= settr(281,0,33,13,0,"assert(!((((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(13, "./v6b.never", 32);
	SI[31] = 1;
	trans[6][31]	= settr(283,0,53,1,0,"(1)", 0, 2, 0);
	SI[32] = 1;
	trans[6][32]	= settr(284,0,53,1,0,"goto T0_S15", 0, 2, 0);
	SI[35] = 0;
	trans[6][35]	= settr(287,0,45,1,0,"break", 0, 2, 0);
	SI[46] = 0;
	trans[6][46]	= settr(298,0,45,1,0,".(goto)", 0, 2, 0);
	SI[45] = 1;
	T = trans[6][45] = settr(297,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:36 */
	T = T->nxt	= settr(297,0,36,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:36 */
	T = T->nxt	= settr(297,0,40,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:36 */
	T = T->nxt	= settr(297,0,41,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:36 */
	    T->nxt	= settr(297,0,43,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:36 */
	SI[36] = 1;
	trans[6][36]	= settr(288,0,13,14,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(14, "./v6b.never", 37);
	SI[37] = 1;
	trans[6][37]	= settr(289,0,13,1,0,"goto accept_S6", 0, 2, 0);
	T = trans[ 6][40] = settr(292,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:38 */
	T->nxt	= settr(292,2,38,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:38 */
	trans[6][38]	= settr(290,2,39,15,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(15, "./v6b.never", 38);
	trans[6][39]	= settr(291,0,45,16,0,"assert(!((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0)))))", 1, 2, 0);
		tr_2_src(16, "./v6b.never", 38);
	SI[41] = 1;
	trans[6][41]	= settr(293,0,45,17,0,"(!((srequested[0]==1)))", 1, 2, 0);
		tr_2_src(17, "./v6b.never", 39);
	SI[42] = 1;
	trans[6][42]	= settr(294,0,45,1,0,"goto T0_S9", 0, 2, 0);
	SI[43] = 1;
	trans[6][43]	= settr(295,0,33,18,0,"((!((srequested[0]==1))&&(((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(18, "./v6b.never", 40);
	SI[44] = 1;
	trans[6][44]	= settr(296,0,33,1,0,"goto accept_S15", 0, 2, 0);
	SI[47] = 0;
	trans[6][47]	= settr(299,0,53,1,0,"break", 0, 2, 0);
	SI[54] = 0;
	trans[6][54]	= settr(306,0,53,1,0,".(goto)", 0, 2, 0);
	SI[53] = 1;
	T = trans[6][53] = settr(305,0,0,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:43 */
	T = T->nxt	= settr(305,0,50,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:43 */
	    T->nxt	= settr(305,0,51,0,0,"DO", 0, 2, 0);
		/* ./v6b.never:43 */
	T = trans[ 6][50] = settr(302,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:44 */
	T->nxt	= settr(302,2,48,0,0,"ATOMIC", 1, 2, 0);
		/* ./v6b.never:44 */
	trans[6][48]	= settr(300,2,49,19,0,"((((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0)))", 1, 2, 0);
		tr_2_src(19, "./v6b.never", 44);
	trans[6][49]	= settr(301,0,53,20,0,"assert(!((((GIOPAgent[Pid[4]]._p==SReplyReceived)||(GIOPAgent[Pid[5]]._p==SReplyReceived))&&(sreply_reqId==0))))", 1, 2, 0);
		tr_2_src(20, "./v6b.never", 44);
	SI[51] = 1;
	trans[6][51]	= settr(303,0,53,1,0,"(1)", 0, 2, 0);
	SI[52] = 1;
	trans[6][52]	= settr(304,0,53,1,0,"goto T0_S15", 0, 2, 0);
	SI[55] = 0;
	trans[6][55]	= settr(307,0,56,1,0,"break", 0, 2, 0);
	SI[56] = 1;
	trans[6][56]	= settr(308,0,57,1,0,"(1)", 0, 2, 0);
	SI[57] = 0;
	trans[6][57]	= settr(309,0,0,21,21,"-end-", 0, 3500, 0);
		tr_2_src(21, "./v6b.never", 49);

 sicnt = (int *) emalloc(58*sizeof(int));

for(i=0;i<58;i++)	 sicnt[i]=0;xspinflag = 1;numberofbastates = 58;
	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(13*sizeof(Trans *));

	T = trans[ 5][11] = settr(251,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.nomig.pr:727 */
	T->nxt	= settr(251,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.nomig.pr:727 */
	trans[5][1]	= settr(241,2,2,22,22,"Pid[0] = run transport(0,toTransportU[0],toClientL)", 1, 2, 0);
		tr_2_src(22, "giop3.nomig.pr", 728);
	trans[5][2]	= settr(242,2,3,23,23,"Pid[1] = run transport(1,toTransportU[1],toAgentL[1])", 1, 2, 0);
		tr_2_src(23, "giop3.nomig.pr", 729);
	trans[5][3]	= settr(243,2,4,24,24,"Pid[2] = run transport(2,toTransportU[2],toAgentL[2])", 1, 2, 0);
		tr_2_src(24, "giop3.nomig.pr", 730);
	trans[5][4]	= settr(244,2,5,25,25,"Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])", 1, 2, 0);
		tr_2_src(25, "giop3.nomig.pr", 732);
	trans[5][5]	= settr(245,2,6,26,26,"Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])", 1, 2, 0);
		tr_2_src(26, "giop3.nomig.pr", 734);
	trans[5][6]	= settr(246,2,7,27,27,"Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])", 1, 2, 0);
		tr_2_src(27, "giop3.nomig.pr", 735);
	trans[5][7]	= settr(247,2,8,28,28,"Pid[6] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(28, "giop3.nomig.pr", 737);
	trans[5][8]	= settr(248,2,9,29,29,"Pid[7] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(29, "giop3.nomig.pr", 738);
	trans[5][9]	= settr(249,2,10,30,30,"Pid[8] = run Server(1,0)", 1, 2, 0);
		tr_2_src(30, "giop3.nomig.pr", 740);
	trans[5][10]	= settr(250,0,12,31,31,"Pid[9] = run Server(2,1)", 1, 2, 0);
		tr_2_src(31, "giop3.nomig.pr", 741);
	trans[5][12]	= settr(252,0,0,32,32,"-end-", 0, 3500, 0);
		tr_2_src(32, "giop3.nomig.pr", 744);

	/* proctype 4: transport */

	trans[4] = (Trans **) emalloc(38*sizeof(Trans *));

	trans[4][35]	= settr(238,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[4][34] = settr(237,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:652 */
	T = T->nxt	= settr(237,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:652 */
	    T->nxt	= settr(237,0,16,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:652 */
	trans[4][1]	= settr(204,0,2,33,33,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(33, "giop3.nomig.pr", 653);
	trans[4][2]	= settr(205,0,7,34,34,"toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 20, 0);
		tr_2_src(34, "giop3.nomig.pr", 661);
	T = trans[4][7] = settr(210,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:663 */
	T = T->nxt	= settr(210,0,3,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:663 */
	    T->nxt	= settr(210,0,5,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:663 */
	trans[4][3]	= settr(206,0,4,35,35,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(35, "giop3.nomig.pr", 664);
	trans[4][4]	= settr(207,0,14,36,36,"connId[dstport] = ((connId[dstport]+1)%8)", 0, 2, 0);
		tr_2_src(36, "giop3.nomig.pr", 665);
	trans[4][8]	= settr(211,0,14,1,0,".(goto)", 0, 2, 0);
	trans[4][5]	= settr(208,0,6,37,37,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(37, "giop3.nomig.pr", 666);
	trans[4][6]	= settr(209,0,14,1,0,"(1)", 0, 2, 0);
	T = trans[4][14] = settr(217,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:672 */
	T = T->nxt	= settr(217,0,9,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:672 */
	    T->nxt	= settr(217,0,12,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:672 */
	trans[4][9]	= settr(212,0,10,38,0,"(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])", 1, 2, 0);
		tr_2_src(38, "giop3.nomig.pr", 673);
	trans[4][10]	= settr(213,0,27,39,39,"savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 523, 0);
		tr_2_src(39, "giop3.nomig.pr", 674);
	trans[4][11]	= settr(214,0,27,1,0,"goto resume", 0, 2, 0);
	trans[4][15]	= settr(218,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][12]	= settr(215,0,13,2,0,"else", 0, 2, 0);
	trans[4][13]	= settr(216,0,34,1,0,"(1)", 0, 2, 0);
	trans[4][16]	= settr(219,0,27,40,40,"toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 520, 0);
		tr_2_src(40, "giop3.nomig.pr", 680);
	T = trans[4][27] = settr(230,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:689 */
	T = T->nxt	= settr(230,0,17,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:689 */
	    T->nxt	= settr(230,0,25,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:689 */
	trans[4][17]	= settr(220,0,23,41,0,"((rcvConnId==connId[srcport]))", 0, 2, 0);
		tr_2_src(41, "giop3.nomig.pr", 691);
	T = trans[4][23] = settr(226,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:692 */
	T = T->nxt	= settr(226,0,18,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:692 */
	    T->nxt	= settr(226,0,19,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:692 */
	trans[4][18]	= settr(221,0,32,42,42,"uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 22, 0);
		tr_2_src(42, "giop3.nomig.pr", 693);
	trans[4][24]	= settr(227,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][19]	= settr(222,0,20,43,0,"(timeout)", 1, 3000, 0);
		tr_2_src(43, "giop3.nomig.pr", 694);
	trans[4][20]	= settr(223,0,21,44,44,"savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 23, 0);
		tr_2_src(44, "giop3.nomig.pr", 702);
	trans[4][21]	= settr(224,0,2,45,45,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(45, "giop3.nomig.pr", 703);
	trans[4][22]	= settr(225,0,2,1,0,"goto preempt", 0, 2, 0);
	trans[4][28]	= settr(231,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][25]	= settr(228,0,26,46,46,"((rcvConnId!=connId[srcport]))", 0, 2, 0);
		tr_2_src(46, "giop3.nomig.pr", 707);
	trans[4][26]	= settr(229,0,32,47,0,"printf('Old message encountered -> discarded\\n')", 0, 2, 0);
		tr_2_src(47, "giop3.nomig.pr", 708);
	T = trans[4][32] = settr(235,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:712 */
	T = T->nxt	= settr(235,0,29,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:712 */
	    T->nxt	= settr(235,0,31,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:712 */
	trans[4][29]	= settr(232,0,30,48,48,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(48, "giop3.nomig.pr", 713);
	trans[4][30]	= settr(233,0,34,49,49,"connId[srcport] = ((connId[srcport]+1)%8)", 0, 2, 0);
		tr_2_src(49, "giop3.nomig.pr", 714);
	trans[4][33]	= settr(236,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][31]	= settr(234,0,34,50,50,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(50, "giop3.nomig.pr", 715);
	trans[4][36]	= settr(239,0,37,1,0,"break", 0, 2, 0);
	trans[4][37]	= settr(240,0,0,51,51,"-end-", 0, 3500, 0);
		tr_2_src(51, "giop3.nomig.pr", 720);

	/* proctype 3: GIOPAgent */

	trans[3] = (Trans **) emalloc(76*sizeof(Trans *));

	trans[3][73]	= settr(201,0,72,1,0,".(goto)", 0, 2, 0);
	T = trans[3][72] = settr(200,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	T = T->nxt	= settr(200,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	T = T->nxt	= settr(200,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	T = T->nxt	= settr(200,0,7,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	T = T->nxt	= settr(200,0,36,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	    T->nxt	= settr(200,0,64,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:451 */
	trans[3][1]	= settr(129,0,4,52,52,"uin?SRegister,objKey,_,_", 1, 515, 0);
		tr_2_src(52, "giop3.nomig.pr", 452);
		tr_2_src(53, "giop3.nomig.pr", 454);
/*->*/	trans[3][4]	= settr(132,32,72,53,53,"D_STEP454", 1, 2, 0);
	trans[3][5]	= settr(133,0,6,54,54,"uin?SMigrateReq,objKey,clPort,_", 1, 515, 0);
		tr_2_src(54, "giop3.nomig.pr", 464);
	trans[3][6]	= settr(134,0,72,55,55,"registered[objKey] = clPort", 0, 2, 0);
		tr_2_src(55, "giop3.nomig.pr", 469);
	trans[3][7]	= settr(135,0,10,56,56,"lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(56, "giop3.nomig.pr", 473);
		tr_2_src(57, "giop3.nomig.pr", 478);
/*->*/	trans[3][10]	= settr(138,32,34,57,57,"D_STEP478", 0, 2, 0);
	T = trans[3][34] = settr(162,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:485 */
	T = T->nxt	= settr(162,0,11,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:485 */
	    T->nxt	= settr(162,0,18,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:485 */
	trans[3][11]	= settr(139,0,13,58,0,"((registered[objKey]==port))", 0, 2, 0);
		tr_2_src(58, "giop3.nomig.pr", 486);
		tr_2_src(59, "giop3.nomig.pr", 491);
/*->*/	trans[3][13]	= settr(141,32,14,59,59,"D_STEP491", 0, 2, 0);
	trans[3][14]	= settr(142,0,17,60,60,"uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag", 1, 16, 0);
		tr_2_src(60, "giop3.nomig.pr", 497);
		tr_2_src(61, "giop3.nomig.pr", 500);
/*->*/	trans[3][17]	= settr(145,32,72,61,61,"D_STEP500", 0, 2, 0);
	trans[3][35]	= settr(163,0,72,1,0,".(goto)", 0, 2, 0);
	trans[3][18]	= settr(146,0,30,62,0,"((registered[objKey]!=port))", 0, 2, 0);
		tr_2_src(62, "giop3.nomig.pr", 508);
	T = trans[3][30] = settr(158,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:510 */
	T = T->nxt	= settr(158,0,19,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:510 */
	    T->nxt	= settr(158,0,24,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:510 */
	trans[3][19]	= settr(147,0,23,63,0,"((registered[objKey]==255))", 0, 2, 0);
		tr_2_src(63, "giop3.nomig.pr", 511);
		tr_2_src(64, "giop3.nomig.pr", 513);
/*->*/	trans[3][23]	= settr(151,32,32,64,64,"D_STEP513", 0, 2, 0);
	trans[3][31]	= settr(159,0,32,1,0,".(goto)", 0, 2, 0);
	trans[3][24]	= settr(152,0,29,2,0,"else", 0, 2, 0);
		tr_2_src(65, "giop3.nomig.pr", 522);
/*->*/	trans[3][29]	= settr(157,32,32,65,65,"D_STEP522", 0, 2, 0);
	trans[3][32]	= settr(160,0,33,66,66,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(66, "giop3.nomig.pr", 531);
	trans[3][33]	= settr(161,0,72,1,0,"(1)", 0, 2, 0);
	trans[3][36]	= settr(164,0,37,67,67,"uin?SReply,objKey,reqId,clPort", 1, 515, 0);
		tr_2_src(67, "giop3.nomig.pr", 537);
	trans[3][37]	= settr(165,0,51,68,0,"assert((requested[reqId]!=0))", 1, 2, 0);
		tr_2_src(68, "giop3.nomig.pr", 543);
	T = trans[3][51] = settr(179,0,0,0,0,"IF", 1, 2, 0);
		/* giop3.nomig.pr:548 */
	T = T->nxt	= settr(179,0,38,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:548 */
	    T->nxt	= settr(179,0,42,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:548 */
	trans[3][38]	= settr(166,0,41,69,0,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(69, "giop3.nomig.pr", 549);
		tr_2_src(70, "giop3.nomig.pr", 552);
/*->*/	trans[3][41]	= settr(169,32,62,70,70,"D_STEP552", 0, 2, 0);
	trans[3][52]	= settr(180,0,62,1,0,".(goto)", 0, 2, 0);
	trans[3][42]	= settr(170,0,46,71,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(71, "giop3.nomig.pr", 559);
		tr_2_src(72, "giop3.nomig.pr", 560);
/*->*/	trans[3][46]	= settr(174,32,47,72,72,"D_STEP560", 0, 2, 0);
	trans[3][47]	= settr(175,0,50,73,73,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(73, "giop3.nomig.pr", 566);
		tr_2_src(74, "giop3.nomig.pr", 568);
/*->*/	trans[3][50]	= settr(178,32,62,74,74,"D_STEP568", 0, 2, 0);
	T = trans[3][62] = settr(190,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:580 */
	T = T->nxt	= settr(190,0,53,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:580 */
	    T->nxt	= settr(190,0,61,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:580 */
	trans[3][53]	= settr(181,0,59,75,0,"((numOutstandingReqs==0))", 0, 2, 0);
		tr_2_src(75, "giop3.nomig.pr", 581);
	T = trans[3][59] = settr(187,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:582 */
	T = T->nxt	= settr(187,0,54,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:582 */
	    T->nxt	= settr(187,0,58,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:582 */
	trans[3][54]	= settr(182,0,55,76,76,"((connState==1))", 0, 2, 0);
		tr_2_src(76, "giop3.nomig.pr", 583);
	trans[3][55]	= settr(183,0,57,77,77,"lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(77, "giop3.nomig.pr", 586);
		tr_2_src(78, "giop3.nomig.pr", 588);
/*->*/	trans[3][57]	= settr(185,32,72,78,78,"D_STEP588", 0, 2, 0);
	trans[3][60]	= settr(188,0,72,1,0,".(goto)", 0, 2, 0);
	trans[3][58]	= settr(186,0,72,79,0,"((connState!=1))", 0, 2, 0);
		tr_2_src(79, "giop3.nomig.pr", 594);
	trans[3][63]	= settr(191,0,72,1,0,".(goto)", 0, 2, 0);
	trans[3][61]	= settr(189,0,72,80,0,"((numOutstandingReqs!=0))", 0, 2, 0);
		tr_2_src(80, "giop3.nomig.pr", 598);
	trans[3][64]	= settr(192,0,65,81,81,"lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(81, "giop3.nomig.pr", 603);
	trans[3][65]	= settr(193,0,70,82,82,"reqId = msg.mhdr.request_id", 0, 2, 0);
		tr_2_src(82, "giop3.nomig.pr", 604);
	T = trans[3][70] = settr(198,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:605 */
	T = T->nxt	= settr(198,0,66,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:605 */
	T = T->nxt	= settr(198,0,68,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:605 */
	    T->nxt	= settr(198,0,69,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:605 */
	trans[3][66]	= settr(194,0,67,83,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(83, "giop3.nomig.pr", 606);
	trans[3][67]	= settr(195,0,72,84,84,"requested[reqId] = 2", 0, 2, 0);
		tr_2_src(84, "giop3.nomig.pr", 609);
	trans[3][71]	= settr(199,0,72,1,0,".(goto)", 0, 2, 0);
	trans[3][68]	= settr(196,0,72,85,85,"((requested[reqId]==0))", 0, 2, 0);
		tr_2_src(85, "giop3.nomig.pr", 611);
	trans[3][69]	= settr(197,0,72,86,86,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(86, "giop3.nomig.pr", 614);
	trans[3][74]	= settr(202,0,75,1,0,"break", 0, 2, 0);
	trans[3][75]	= settr(203,0,0,87,87,"-end-", 0, 3500, 0);
		tr_2_src(87, "giop3.nomig.pr", 620);

	/* proctype 2: Server */

	trans[2] = (Trans **) emalloc(8*sizeof(Trans *));

	trans[2][1]	= settr(122,0,4,88,88,"toAgentU[port]!SRegister,objKey,port,0", 1, 13, 0);
		tr_2_src(88, "giop3.nomig.pr", 423);
	trans[2][5]	= settr(126,0,4,1,0,".(goto)", 0, 2, 0);
	T = trans[2][4] = settr(125,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:426 */
	    T->nxt	= settr(125,0,2,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:426 */
	trans[2][2]	= settr(123,0,3,89,89,"toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,tag", 1, 512, 0);
		tr_2_src(89, "giop3.nomig.pr", 428);
	trans[2][3]	= settr(124,0,4,90,90,"toAgentU[port]!SReply,objKey,opaqueData,opaqueData2", 1, 13, 0);
		tr_2_src(90, "giop3.nomig.pr", 431);
	trans[2][6]	= settr(127,0,7,1,0,"break", 0, 2, 0);
	trans[2][7]	= settr(128,0,0,91,91,"-end-", 0, 3500, 0);
		tr_2_src(91, "giop3.nomig.pr", 435);

	/* proctype 1: GIOPClient */

	trans[1] = (Trans **) emalloc(87*sizeof(Trans *));

	trans[1][84]	= settr(119,0,83,1,0,".(goto)", 0, 2, 0);
	T = trans[1][83] = settr(118,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:228 */
	T = T->nxt	= settr(118,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:228 */
	T = T->nxt	= settr(118,0,29,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:228 */
	    T->nxt	= settr(118,0,55,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:228 */
	trans[1][1]	= settr(36,0,4,92,92,"uin?URequest,tag,objref.objKey,objref.port", 1, 508, 0);
		tr_2_src(92, "giop3.nomig.pr", 229);
		tr_2_src(93, "giop3.nomig.pr", 235);
/*->*/	trans[1][4]	= settr(39,32,10,93,93,"D_STEP235", 0, 2, 0);
	trans[1][11]	= settr(46,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[1][10] = settr(45,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:241 */
	T = T->nxt	= settr(45,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:241 */
	    T->nxt	= settr(45,0,8,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:241 */
	trans[1][5]	= settr(40,0,6,94,0,"((usedReqId[reqId]!=0))", 1, 2, 0);
		tr_2_src(94, "giop3.nomig.pr", 242);
	trans[1][6]	= settr(41,0,7,95,95,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(95, "giop3.nomig.pr", 243);
	trans[1][7]	= settr(42,0,10,96,0,"assert((reqId<4))", 0, 2, 0);
		tr_2_src(96, "giop3.nomig.pr", 244);
	trans[1][8]	= settr(43,0,13,97,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(97, "giop3.nomig.pr", 246);
	trans[1][9]	= settr(44,0,13,1,0,"goto :b3", 0, 2, 0);
	trans[1][12]	= settr(47,0,13,1,0,"break", 0, 2, 0);
	trans[1][13]	= settr(48,0,20,98,98,"usedReqId[reqId] = 1", 1, 2, 0);
		tr_2_src(98, "giop3.nomig.pr", 251);
		tr_2_src(99, "giop3.nomig.pr", 252);
/*->*/	trans[1][20]	= settr(55,32,21,99,99,"D_STEP252", 0, 2, 0);
	trans[1][21]	= settr(56,0,27,100,100,"lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(100, "giop3.nomig.pr", 266);
	T = trans[1][27] = settr(62,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:271 */
	T = T->nxt	= settr(62,0,22,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:271 */
	    T->nxt	= settr(62,0,23,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:271 */
	trans[1][22]	= settr(57,0,83,1,0,"(1)", 0, 2, 0);
	trans[1][28]	= settr(63,0,83,1,0,".(goto)", 0, 2, 0);
	trans[1][23]	= settr(58,0,24,1,0,"(1)", 0, 2, 0);
	trans[1][24]	= settr(59,0,25,101,101,"lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(101, "giop3.nomig.pr", 278);
	trans[1][25]	= settr(60,0,26,102,102,"usedReqId[reqId] = 2", 1, 2, 0);
		tr_2_src(102, "giop3.nomig.pr", 280);
	trans[1][26]	= settr(61,0,83,103,103,"uout!UReply,tag,3", 1, 9, 0);
		tr_2_src(103, "giop3.nomig.pr", 283);
	trans[1][29]	= settr(64,0,32,104,104,"lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(104, "giop3.nomig.pr", 286);
		tr_2_src(105, "giop3.nomig.pr", 291);
/*->*/	trans[1][32]	= settr(67,32,53,105,105,"D_STEP291", 1, 2, 0);
	T = trans[1][53] = settr(88,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:298 */
	T = T->nxt	= settr(88,0,33,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:298 */
	    T->nxt	= settr(88,0,47,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:298 */
	trans[1][33]	= settr(68,0,45,106,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(106, "giop3.nomig.pr", 299);
	T = trans[1][45] = settr(80,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:302 */
	T = T->nxt	= settr(80,0,34,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:302 */
	    T->nxt	= settr(80,0,38,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:302 */
	trans[1][34]	= settr(69,0,36,107,0,"((msg.mhdr.reply_status==4))", 0, 2, 0);
		tr_2_src(107, "giop3.nomig.pr", 303);
		tr_2_src(108, "giop3.nomig.pr", 308);
/*->*/	trans[1][36]	= settr(71,32,37,108,108,"D_STEP308", 0, 2, 0);
	trans[1][37]	= settr(72,0,83,109,109,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(109, "giop3.nomig.pr", 312);
	trans[1][46]	= settr(81,0,83,1,0,".(goto)", 0, 2, 0);
	trans[1][38]	= settr(73,0,39,2,0,"else", 0, 2, 0);
	trans[1][39]	= settr(74,0,44,110,110,"uout!UReply,tags[reqId],msg.mhdr.reply_status", 1, 9, 0);
		tr_2_src(110, "giop3.nomig.pr", 317);
		tr_2_src(111, "giop3.nomig.pr", 320);
/*->*/	trans[1][44]	= settr(79,32,83,111,111,"D_STEP320", 1, 2, 0);
	trans[1][54]	= settr(89,0,83,1,0,".(goto)", 0, 2, 0);
	trans[1][47]	= settr(82,0,52,112,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(112, "giop3.nomig.pr", 330);
		tr_2_src(113, "giop3.nomig.pr", 332);
/*->*/	trans[1][52]	= settr(87,32,83,113,113,"D_STEP332", 1, 2, 0);
	trans[1][55]	= settr(90,0,56,114,114,"lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(114, "giop3.nomig.pr", 341);
	trans[1][56]	= settr(91,0,80,115,115,"reqId = 0", 0, 2, 0);
		tr_2_src(115, "giop3.nomig.pr", 350);
	trans[1][81]	= settr(116,0,80,1,0,".(goto)", 0, 2, 0);
	T = trans[1][80] = settr(115,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:351 */
	T = T->nxt	= settr(115,0,57,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:351 */
	    T->nxt	= settr(115,0,59,0,0,"DO", 0, 2, 0);
		/* giop3.nomig.pr:351 */
	trans[1][57]	= settr(92,0,83,116,116,"((reqId==4))", 0, 2, 0);
		tr_2_src(116, "giop3.nomig.pr", 352);
	trans[1][58]	= settr(93,0,83,1,0,"goto :b4", 0, 2, 0);
	trans[1][59]	= settr(94,0,77,117,0,"((reqId!=4))", 0, 2, 0);
		tr_2_src(117, "giop3.nomig.pr", 355);
	T = trans[1][77] = settr(112,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:356 */
	T = T->nxt	= settr(112,0,60,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:356 */
	    T->nxt	= settr(112,0,76,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:356 */
	trans[1][60]	= settr(95,0,74,118,0,"((objRefs[reqId].port==svrPort))", 0, 2, 0);
		tr_2_src(118, "giop3.nomig.pr", 357);
	T = trans[1][74] = settr(109,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:359 */
	T = T->nxt	= settr(109,0,61,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:359 */
	T = T->nxt	= settr(109,0,67,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:359 */
	    T->nxt	= settr(109,0,73,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:359 */
	trans[1][61]	= settr(96,0,65,119,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(119, "giop3.nomig.pr", 360);
		tr_2_src(120, "giop3.nomig.pr", 367);
/*->*/	trans[1][65]	= settr(100,32,66,120,120,"D_STEP367", 0, 2, 0);
	trans[1][66]	= settr(101,0,79,121,121,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(121, "giop3.nomig.pr", 372);
	trans[1][75]	= settr(110,0,79,1,0,".(goto)", 0, 2, 0);
	trans[1][67]	= settr(102,0,72,122,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(122, "giop3.nomig.pr", 375);
		tr_2_src(123, "giop3.nomig.pr", 379);
/*->*/	trans[1][72]	= settr(107,32,79,123,123,"D_STEP379", 1, 2, 0);
	trans[1][73]	= settr(108,0,79,124,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(124, "giop3.nomig.pr", 386);
	trans[1][78]	= settr(113,0,79,1,0,".(goto)", 0, 2, 0);
	trans[1][76]	= settr(111,0,79,125,0,"((objRefs[reqId].port!=svrPort))", 0, 2, 0);
		tr_2_src(125, "giop3.nomig.pr", 391);
	trans[1][79]	= settr(114,0,80,126,126,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(126, "giop3.nomig.pr", 394);
	trans[1][82]	= settr(117,0,83,1,0,"break", 0, 2, 0);
	trans[1][85]	= settr(120,0,86,1,0,"break", 0, 2, 0);
	trans[1][86]	= settr(121,0,0,127,127,"-end-", 0, 3500, 0);
		tr_2_src(127, "giop3.nomig.pr", 399);

	/* proctype 0: User */

	trans[0] = (Trans **) emalloc(37*sizeof(Trans *));

	T = trans[ 0][11] = settr(10,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.nomig.pr:148 */
	T->nxt	= settr(10,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.nomig.pr:148 */
	trans[0][1]	= settr(0,2,7,128,128,"i = 0", 1, 2, 0);
		tr_2_src(128, "giop3.nomig.pr", 149);
	trans[0][8]	= settr(7,2,7,1,0,".(goto)", 1, 2, 0);
	T = trans[0][7] = settr(6,2,0,0,0,"DO", 1, 2, 0);
		/* giop3.nomig.pr:150 */
	T = T->nxt	= settr(6,2,2,0,0,"DO", 1, 2, 0);
		/* giop3.nomig.pr:150 */
	    T->nxt	= settr(6,2,5,0,0,"DO", 1, 2, 0);
		/* giop3.nomig.pr:150 */
	trans[0][2]	= settr(1,2,3,129,0,"((i<2))", 1, 2, 0);
		tr_2_src(129, "giop3.nomig.pr", 151);
	trans[0][3]	= settr(2,2,4,130,0,"((gPublished[i]!=255))", 1, 2, 0);
		tr_2_src(130, "giop3.nomig.pr", 152);
	trans[0][4]	= settr(3,2,7,131,131,"i = (i+1)", 1, 2, 0);
		tr_2_src(131, "giop3.nomig.pr", 153);
	trans[0][5]	= settr(4,2,9,132,132,"((i==2))", 1, 2, 0);
		tr_2_src(132, "giop3.nomig.pr", 154);
	trans[0][6]	= settr(5,2,9,1,0,"goto :b0", 1, 2, 0);
	trans[0][9]	= settr(8,2,10,1,0,"break", 1, 2, 0);
	trans[0][10]	= settr(9,0,23,133,133,"i = 0", 1, 2, 0);
		tr_2_src(133, "giop3.nomig.pr", 157);
		tr_2_src(134, "giop3.nomig.pr", 164);
/*->*/	trans[0][23]	= settr(22,32,24,134,134,"D_STEP164", 1, 2, 0);
	trans[0][24]	= settr(23,0,25,135,135,"lout!URequest,tag,objref.objKey,objref.port", 1, 5, 0);
		tr_2_src(135, "giop3.nomig.pr", 178);
	trans[0][25]	= settr(24,0,34,136,136,"lin?UReply,eval(tag),status", 1, 504, 0);
		tr_2_src(136, "giop3.nomig.pr", 185);
	T = trans[0][34] = settr(33,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:190 */
	T = T->nxt	= settr(33,0,26,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:190 */
	T = T->nxt	= settr(33,0,28,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:190 */
	T = T->nxt	= settr(33,0,30,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:190 */
	    T->nxt	= settr(33,0,32,0,0,"IF", 0, 2, 0);
		/* giop3.nomig.pr:190 */
	trans[0][26]	= settr(25,0,27,137,137,"((status==1))", 0, 2, 0);
		tr_2_src(137, "giop3.nomig.pr", 191);
	trans[0][27]	= settr(26,0,36,138,0,"printf('Request satisfied\\n')", 0, 2, 0);
		tr_2_src(138, "giop3.nomig.pr", 193);
	trans[0][35]	= settr(34,0,36,1,0,".(goto)", 0, 2, 0);
	trans[0][28]	= settr(27,0,29,139,139,"((status==2))", 0, 2, 0);
		tr_2_src(139, "giop3.nomig.pr", 195);
	trans[0][29]	= settr(28,0,36,140,0,"printf('Request failed: user exception\\n')", 0, 2, 0);
		tr_2_src(140, "giop3.nomig.pr", 197);
	trans[0][30]	= settr(29,0,31,141,141,"((status==3))", 0, 2, 0);
		tr_2_src(141, "giop3.nomig.pr", 199);
	trans[0][31]	= settr(30,0,36,142,0,"printf('Request failed: system exception\\n')", 0, 2, 0);
		tr_2_src(142, "giop3.nomig.pr", 201);
	trans[0][32]	= settr(31,0,33,143,143,"((status==5))", 0, 2, 0);
		tr_2_src(143, "giop3.nomig.pr", 203);
	trans[0][33]	= settr(32,0,36,144,0,"printf('Request failed: object does not exist\\n')", 0, 2, 0);
		tr_2_src(144, "giop3.nomig.pr", 204);
	trans[0][36]	= settr(35,0,0,145,145,"-end-", 0, 3500, 0);
		tr_2_src(145, "giop3.nomig.pr", 206);
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
