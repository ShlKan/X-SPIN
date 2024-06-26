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

	trans[6] = (Trans **) emalloc(35*sizeof(Trans *));


  SI = (int *) emalloc(35*sizeof(int));

	SI[8] = 0;
	trans[6][8]	= settr(274,0,7,1,0,".(goto)", 0, 2, 0);
	SI[7] = 0;
	T = trans[6][7] = settr(273,0,0,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:15 */
	T = T->nxt	= settr(273,0,1,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:15 */
	T = T->nxt	= settr(273,0,3,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:15 */
	    T->nxt	= settr(273,0,5,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:15 */
	SI[1] = 0;
	trans[6][1]	= settr(267,0,15,3,0,"((((User[Pid[6]]._p==URequestSent)&&(User[Pid[7]]._p==URequestSent))&&((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(3, "./v10b.nomig.never", 16);
	SI[2] = 0;
	trans[6][2]	= settr(268,0,15,1,0,"goto accept_S9", 0, 2, 0);
	SI[3] = 0;
	trans[6][3]	= settr(269,0,22,4,0,"(((User[Pid[6]]._p==URequestSent)&&(User[Pid[7]]._p==URequestSent)))", 1, 2, 0);
		tr_2_src(4, "./v10b.nomig.never", 17);
	SI[4] = 0;
	trans[6][4]	= settr(270,0,22,1,0,"goto T0_S12", 0, 2, 0);
	SI[5] = 0;
	trans[6][5]	= settr(271,0,7,1,0,"(1)", 0, 2, 0);
	SI[6] = 0;
	trans[6][6]	= settr(272,0,7,1,0,"goto T0_init", 0, 2, 0);
	SI[9] = 0;
	trans[6][9]	= settr(275,0,15,1,0,"break", 0, 2, 0);
	SI[16] = 0;
	trans[6][16]	= settr(282,0,15,1,0,".(goto)", 0, 2, 0);
	SI[15] = 1;
	T = trans[6][15] = settr(281,0,0,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:21 */
	T = T->nxt	= settr(281,0,10,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:21 */
	    T->nxt	= settr(281,0,14,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:21 */
	SI[10] = 1;
	trans[6][10]	= settr(276,0,15,5,0,"(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(5, "./v10b.nomig.never", 22);
	SI[11] = 1;
	trans[6][11]	= settr(277,0,15,1,0,"goto accept_S9", 0, 2, 0);
	T = trans[ 6][14] = settr(280,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v10b.nomig.never:23 */
	T->nxt	= settr(280,2,12,0,0,"ATOMIC", 1, 2, 0);
		/* ./v10b.nomig.never:23 */
	trans[6][12]	= settr(278,2,13,6,0,"((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(6, "./v10b.nomig.never", 23);
	trans[6][13]	= settr(279,0,15,7,0,"assert(!((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed)))))", 1, 2, 0);
		tr_2_src(7, "./v10b.nomig.never", 23);
	SI[17] = 0;
	trans[6][17]	= settr(283,0,22,1,0,"break", 0, 2, 0);
	SI[23] = 0;
	trans[6][23]	= settr(289,0,22,1,0,".(goto)", 0, 2, 0);
	SI[22] = 1;
	T = trans[6][22] = settr(288,0,0,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:26 */
	T = T->nxt	= settr(288,0,18,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:26 */
	    T->nxt	= settr(288,0,20,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:26 */
	SI[18] = 1;
	trans[6][18]	= settr(284,0,22,8,0,"(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(8, "./v10b.nomig.never", 27);
	SI[19] = 1;
	trans[6][19]	= settr(285,0,22,1,0,"goto T0_S12", 0, 2, 0);
	SI[20] = 1;
	trans[6][20]	= settr(286,0,30,9,0,"((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(9, "./v10b.nomig.never", 28);
	SI[21] = 1;
	trans[6][21]	= settr(287,0,30,1,0,"goto T0_S18", 0, 2, 0);
	SI[24] = 0;
	trans[6][24]	= settr(290,0,30,1,0,"break", 0, 2, 0);
	SI[31] = 0;
	trans[6][31]	= settr(297,0,30,1,0,".(goto)", 0, 2, 0);
	SI[30] = 1;
	T = trans[6][30] = settr(296,0,0,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:31 */
	T = T->nxt	= settr(296,0,27,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:31 */
	    T->nxt	= settr(296,0,28,0,0,"DO", 0, 2, 0);
		/* ./v10b.nomig.never:31 */
	T = trans[ 6][27] = settr(293,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* ./v10b.nomig.never:32 */
	T->nxt	= settr(293,2,25,0,0,"ATOMIC", 1, 2, 0);
		/* ./v10b.nomig.never:32 */
	trans[6][25]	= settr(291,2,26,10,0,"(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))", 1, 2, 0);
		tr_2_src(10, "./v10b.nomig.never", 32);
	trans[6][26]	= settr(292,0,30,11,0,"assert(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))", 1, 2, 0);
		tr_2_src(11, "./v10b.nomig.never", 32);
	SI[28] = 1;
	trans[6][28]	= settr(294,0,30,1,0,"(1)", 0, 2, 0);
	SI[29] = 1;
	trans[6][29]	= settr(295,0,30,1,0,"goto T0_S18", 0, 2, 0);
	SI[32] = 0;
	trans[6][32]	= settr(298,0,33,1,0,"break", 0, 2, 0);
	SI[33] = 1;
	trans[6][33]	= settr(299,0,34,1,0,"(1)", 0, 2, 0);
	SI[34] = 0;
	trans[6][34]	= settr(300,0,0,12,12,"-end-", 0, 3500, 0);
		tr_2_src(12, "./v10b.nomig.never", 37);

 sicnt = (int *) emalloc(35*sizeof(int));

for(i=0;i<35;i++)	 sicnt[i]=0;xspinflag = 1;numberofbastates = 35;
	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(14*sizeof(Trans *));

	T = trans[ 5][12] = settr(265,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:742 */
	T->nxt	= settr(265,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:742 */
	trans[5][1]	= settr(254,2,2,13,13,"Pid[0] = run transport(0,toTransportU[0],toClientL)", 1, 2, 0);
		tr_2_src(13, "giop3.v10.nomig.pr", 743);
	trans[5][2]	= settr(255,2,3,14,14,"Pid[1] = run transport(1,toTransportU[1],toAgentL[1])", 1, 2, 0);
		tr_2_src(14, "giop3.v10.nomig.pr", 744);
	trans[5][3]	= settr(256,2,4,15,15,"Pid[2] = run transport(2,toTransportU[2],toAgentL[2])", 1, 2, 0);
		tr_2_src(15, "giop3.v10.nomig.pr", 745);
	trans[5][4]	= settr(257,2,5,16,16,"Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])", 1, 2, 0);
		tr_2_src(16, "giop3.v10.nomig.pr", 747);
	trans[5][5]	= settr(258,2,6,17,17,"Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])", 1, 2, 0);
		tr_2_src(17, "giop3.v10.nomig.pr", 749);
	trans[5][6]	= settr(259,2,7,18,18,"Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])", 1, 2, 0);
		tr_2_src(18, "giop3.v10.nomig.pr", 750);
	trans[5][7]	= settr(260,2,8,19,19,"Pid[6] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(19, "giop3.v10.nomig.pr", 752);
	trans[5][8]	= settr(261,2,9,20,20,"Pid[7] = run User(toUser,toClientU)", 1, 2, 0);
		tr_2_src(20, "giop3.v10.nomig.pr", 753);
	trans[5][9]	= settr(262,2,10,21,21,"Pid[8] = run Server(1,0)", 1, 2, 0);
		tr_2_src(21, "giop3.v10.nomig.pr", 755);
	trans[5][10]	= settr(263,2,11,22,22,"Pid[9] = run Server(2,1)", 1, 2, 0);
		tr_2_src(22, "giop3.v10.nomig.pr", 756);
	trans[5][11]	= settr(264,0,13,23,23,"turn = Pid[6]", 1, 2, 0);
		tr_2_src(23, "giop3.v10.nomig.pr", 758);
	trans[5][13]	= settr(266,0,0,24,24,"-end-", 0, 3500, 0);
		tr_2_src(24, "giop3.v10.nomig.pr", 761);

	/* proctype 4: transport */

	trans[4] = (Trans **) emalloc(38*sizeof(Trans *));

	trans[4][35]	= settr(251,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[4][34] = settr(250,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:667 */
	T = T->nxt	= settr(250,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:667 */
	    T->nxt	= settr(250,0,16,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:667 */
	trans[4][1]	= settr(217,0,2,25,25,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(25, "giop3.v10.nomig.pr", 668);
	trans[4][2]	= settr(218,0,7,26,26,"toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 20, 0);
		tr_2_src(26, "giop3.v10.nomig.pr", 676);
	T = trans[4][7] = settr(223,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:678 */
	T = T->nxt	= settr(223,0,3,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:678 */
	    T->nxt	= settr(223,0,5,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:678 */
	trans[4][3]	= settr(219,0,4,27,27,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(27, "giop3.v10.nomig.pr", 679);
	trans[4][4]	= settr(220,0,14,28,28,"connId[dstport] = ((connId[dstport]+1)%8)", 0, 2, 0);
		tr_2_src(28, "giop3.v10.nomig.pr", 680);
	trans[4][8]	= settr(224,0,14,1,0,".(goto)", 0, 2, 0);
	trans[4][5]	= settr(221,0,6,29,29,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(29, "giop3.v10.nomig.pr", 681);
	trans[4][6]	= settr(222,0,14,1,0,"(1)", 0, 2, 0);
	T = trans[4][14] = settr(230,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:687 */
	T = T->nxt	= settr(230,0,9,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:687 */
	    T->nxt	= settr(230,0,12,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:687 */
	trans[4][9]	= settr(225,0,10,30,0,"(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])", 1, 2, 0);
		tr_2_src(30, "giop3.v10.nomig.pr", 688);
	trans[4][10]	= settr(226,0,27,31,31,"savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 523, 0);
		tr_2_src(31, "giop3.v10.nomig.pr", 689);
	trans[4][11]	= settr(227,0,27,1,0,"goto resume", 0, 2, 0);
	trans[4][15]	= settr(231,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][12]	= settr(228,0,13,2,0,"else", 0, 2, 0);
	trans[4][13]	= settr(229,0,34,1,0,"(1)", 0, 2, 0);
	trans[4][16]	= settr(232,0,27,32,32,"toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 520, 0);
		tr_2_src(32, "giop3.v10.nomig.pr", 695);
	T = trans[4][27] = settr(243,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:704 */
	T = T->nxt	= settr(243,0,17,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:704 */
	    T->nxt	= settr(243,0,25,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:704 */
	trans[4][17]	= settr(233,0,23,33,0,"((rcvConnId==connId[srcport]))", 0, 2, 0);
		tr_2_src(33, "giop3.v10.nomig.pr", 706);
	T = trans[4][23] = settr(239,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:707 */
	T = T->nxt	= settr(239,0,18,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:707 */
	    T->nxt	= settr(239,0,19,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:707 */
	trans[4][18]	= settr(234,0,32,34,34,"uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 22, 0);
		tr_2_src(34, "giop3.v10.nomig.pr", 708);
	trans[4][24]	= settr(240,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][19]	= settr(235,0,20,35,0,"(timeout)", 1, 3000, 0);
		tr_2_src(35, "giop3.v10.nomig.pr", 709);
	trans[4][20]	= settr(236,0,21,36,36,"savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 23, 0);
		tr_2_src(36, "giop3.v10.nomig.pr", 717);
	trans[4][21]	= settr(237,0,2,37,37,"uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 521, 0);
		tr_2_src(37, "giop3.v10.nomig.pr", 718);
	trans[4][22]	= settr(238,0,2,1,0,"goto preempt", 0, 2, 0);
	trans[4][28]	= settr(244,0,32,1,0,".(goto)", 0, 2, 0);
	trans[4][25]	= settr(241,0,26,38,38,"((rcvConnId!=connId[srcport]))", 0, 2, 0);
		tr_2_src(38, "giop3.v10.nomig.pr", 722);
	trans[4][26]	= settr(242,0,32,39,0,"printf('Old message encountered -> discarded\\n')", 0, 2, 0);
		tr_2_src(39, "giop3.v10.nomig.pr", 723);
	T = trans[4][32] = settr(248,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:727 */
	T = T->nxt	= settr(248,0,29,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:727 */
	    T->nxt	= settr(248,0,31,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:727 */
	trans[4][29]	= settr(245,0,30,40,40,"((msgType==CloseConnection))", 0, 2, 0);
		tr_2_src(40, "giop3.v10.nomig.pr", 728);
	trans[4][30]	= settr(246,0,34,41,41,"connId[srcport] = ((connId[srcport]+1)%8)", 0, 2, 0);
		tr_2_src(41, "giop3.v10.nomig.pr", 729);
	trans[4][33]	= settr(249,0,34,1,0,".(goto)", 0, 2, 0);
	trans[4][31]	= settr(247,0,34,42,42,"((msgType!=CloseConnection))", 0, 2, 0);
		tr_2_src(42, "giop3.v10.nomig.pr", 730);
	trans[4][36]	= settr(252,0,37,1,0,"break", 0, 2, 0);
	trans[4][37]	= settr(253,0,0,43,43,"-end-", 0, 3500, 0);
		tr_2_src(43, "giop3.v10.nomig.pr", 735);

	/* proctype 3: GIOPAgent */

	trans[3] = (Trans **) emalloc(85*sizeof(Trans *));

	trans[3][82]	= settr(214,0,81,1,0,".(goto)", 0, 2, 0);
	T = trans[3][81] = settr(213,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	T = T->nxt	= settr(213,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	T = T->nxt	= settr(213,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	T = T->nxt	= settr(213,0,7,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	T = T->nxt	= settr(213,0,39,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	    T->nxt	= settr(213,0,73,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:468 */
	trans[3][1]	= settr(133,0,4,44,44,"uin?SRegister,objKey,_,_", 1, 515, 0);
		tr_2_src(44, "giop3.v10.nomig.pr", 469);
		tr_2_src(45, "giop3.v10.nomig.pr", 471);
/*->*/	trans[3][4]	= settr(136,32,81,45,45,"D_STEP471", 1, 2, 0);
	trans[3][5]	= settr(137,0,6,46,46,"uin?SMigrateReq,objKey,clPort,_", 1, 515, 0);
		tr_2_src(46, "giop3.v10.nomig.pr", 481);
	trans[3][6]	= settr(138,0,81,47,47,"registered[objKey] = clPort", 0, 2, 0);
		tr_2_src(47, "giop3.v10.nomig.pr", 486);
	trans[3][7]	= settr(139,0,11,48,48,"lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(48, "giop3.v10.nomig.pr", 490);
		tr_2_src(49, "giop3.v10.nomig.pr", 495);
/*->*/	trans[3][11]	= settr(143,32,37,49,49,"D_STEP495", 1, 2, 0);
	T = trans[3][37] = settr(169,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:502 */
	T = T->nxt	= settr(169,0,12,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:502 */
	    T->nxt	= settr(169,0,21,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:502 */
	trans[3][12]	= settr(144,0,15,50,0,"((registered[objKey]==port))", 0, 2, 0);
		tr_2_src(50, "giop3.v10.nomig.pr", 503);
		tr_2_src(51, "giop3.v10.nomig.pr", 508);
/*->*/	trans[3][15]	= settr(147,32,16,51,51,"D_STEP508", 1, 2, 0);
	trans[3][16]	= settr(148,0,20,52,52,"uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag", 1, 16, 0);
		tr_2_src(52, "giop3.v10.nomig.pr", 514);
		tr_2_src(53, "giop3.v10.nomig.pr", 517);
/*->*/	trans[3][20]	= settr(152,32,81,53,53,"D_STEP517", 1, 2, 0);
	trans[3][38]	= settr(170,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][21]	= settr(153,0,33,54,0,"((registered[objKey]!=port))", 0, 2, 0);
		tr_2_src(54, "giop3.v10.nomig.pr", 525);
	T = trans[3][33] = settr(165,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:527 */
	T = T->nxt	= settr(165,0,22,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:527 */
	    T->nxt	= settr(165,0,27,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:527 */
	trans[3][22]	= settr(154,0,26,55,0,"((registered[objKey]==255))", 0, 2, 0);
		tr_2_src(55, "giop3.v10.nomig.pr", 528);
		tr_2_src(56, "giop3.v10.nomig.pr", 530);
/*->*/	trans[3][26]	= settr(158,32,35,56,56,"D_STEP530", 0, 2, 0);
	trans[3][34]	= settr(166,0,35,1,0,".(goto)", 0, 2, 0);
	trans[3][27]	= settr(159,0,32,2,0,"else", 0, 2, 0);
		tr_2_src(57, "giop3.v10.nomig.pr", 539);
/*->*/	trans[3][32]	= settr(164,32,35,57,57,"D_STEP539", 0, 2, 0);
	trans[3][35]	= settr(167,0,36,58,58,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(58, "giop3.v10.nomig.pr", 548);
	trans[3][36]	= settr(168,0,81,59,59,"numRepliesSent[port] = (numRepliesSent[port]+1)", 1, 2, 0);
		tr_2_src(59, "giop3.v10.nomig.pr", 549);
	trans[3][39]	= settr(171,0,40,60,60,"uin?SReply,objKey,reqId,clPort", 1, 515, 0);
		tr_2_src(60, "giop3.v10.nomig.pr", 552);
	trans[3][40]	= settr(172,0,41,61,0,"assert((requested[reqId]!=0))", 0, 2, 0);
		tr_2_src(61, "giop3.v10.nomig.pr", 558);
	trans[3][41]	= settr(173,0,58,62,62,"sreply_reqId = reqId", 1, 2, 0);
		tr_2_src(62, "giop3.v10.nomig.pr", 560);
	T = trans[3][58] = settr(190,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:563 */
	T = T->nxt	= settr(190,0,42,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:563 */
	    T->nxt	= settr(190,0,47,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:563 */
	trans[3][42]	= settr(174,0,46,63,0,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(63, "giop3.v10.nomig.pr", 564);
		tr_2_src(64, "giop3.v10.nomig.pr", 567);
/*->*/	trans[3][46]	= settr(178,32,71,64,64,"D_STEP567", 1, 2, 0);
	trans[3][59]	= settr(191,0,71,1,0,".(goto)", 0, 2, 0);
	trans[3][47]	= settr(179,0,51,65,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(65, "giop3.v10.nomig.pr", 574);
		tr_2_src(66, "giop3.v10.nomig.pr", 575);
/*->*/	trans[3][51]	= settr(183,32,52,66,66,"D_STEP575", 0, 2, 0);
	trans[3][52]	= settr(184,0,57,67,67,"lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(67, "giop3.v10.nomig.pr", 581);
		tr_2_src(68, "giop3.v10.nomig.pr", 583);
/*->*/	trans[3][57]	= settr(189,32,71,68,68,"D_STEP583", 1, 2, 0);
	T = trans[3][71] = settr(203,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:595 */
	T = T->nxt	= settr(203,0,60,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:595 */
	    T->nxt	= settr(203,0,70,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:595 */
	trans[3][60]	= settr(192,0,68,69,0,"((numOutstandingReqs==0))", 0, 2, 0);
		tr_2_src(69, "giop3.v10.nomig.pr", 596);
	T = trans[3][68] = settr(200,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:597 */
	T = T->nxt	= settr(200,0,61,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:597 */
	    T->nxt	= settr(200,0,67,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:597 */
	trans[3][61]	= settr(193,0,62,70,70,"((connState==1))", 0, 2, 0);
		tr_2_src(70, "giop3.v10.nomig.pr", 598);
	trans[3][62]	= settr(194,0,66,71,71,"lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 18, 0);
		tr_2_src(71, "giop3.v10.nomig.pr", 601);
		tr_2_src(72, "giop3.v10.nomig.pr", 603);
/*->*/	trans[3][66]	= settr(198,32,81,72,72,"D_STEP603", 1, 2, 0);
	trans[3][69]	= settr(201,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][67]	= settr(199,0,81,73,0,"((connState!=1))", 0, 2, 0);
		tr_2_src(73, "giop3.v10.nomig.pr", 609);
	trans[3][72]	= settr(204,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][70]	= settr(202,0,81,74,0,"((numOutstandingReqs!=0))", 0, 2, 0);
		tr_2_src(74, "giop3.v10.nomig.pr", 613);
	trans[3][73]	= settr(205,0,74,75,75,"lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 517, 0);
		tr_2_src(75, "giop3.v10.nomig.pr", 618);
	trans[3][74]	= settr(206,0,79,76,76,"reqId = msg.mhdr.request_id", 0, 2, 0);
		tr_2_src(76, "giop3.v10.nomig.pr", 619);
	T = trans[3][79] = settr(211,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:620 */
	T = T->nxt	= settr(211,0,75,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:620 */
	T = T->nxt	= settr(211,0,77,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:620 */
	    T->nxt	= settr(211,0,78,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:620 */
	trans[3][75]	= settr(207,0,76,77,0,"((requested[reqId]==1))", 0, 2, 0);
		tr_2_src(77, "giop3.v10.nomig.pr", 621);
	trans[3][76]	= settr(208,0,81,78,78,"requested[reqId] = 2", 0, 2, 0);
		tr_2_src(78, "giop3.v10.nomig.pr", 624);
	trans[3][80]	= settr(212,0,81,1,0,".(goto)", 0, 2, 0);
	trans[3][77]	= settr(209,0,81,79,79,"((requested[reqId]==0))", 0, 2, 0);
		tr_2_src(79, "giop3.v10.nomig.pr", 626);
	trans[3][78]	= settr(210,0,81,80,80,"((requested[reqId]==2))", 0, 2, 0);
		tr_2_src(80, "giop3.v10.nomig.pr", 629);
	trans[3][83]	= settr(215,0,84,1,0,"break", 0, 2, 0);
	trans[3][84]	= settr(216,0,0,81,81,"-end-", 0, 3500, 0);
		tr_2_src(81, "giop3.v10.nomig.pr", 635);

	/* proctype 2: Server */

	trans[2] = (Trans **) emalloc(8*sizeof(Trans *));

	trans[2][1]	= settr(126,0,4,82,82,"toAgentU[port]!SRegister,objKey,port,0", 1, 13, 0);
		tr_2_src(82, "giop3.v10.nomig.pr", 430);
	trans[2][5]	= settr(130,0,4,1,0,".(goto)", 0, 2, 0);
	T = trans[2][4] = settr(129,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:433 */
	    T->nxt	= settr(129,0,2,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:433 */
	trans[2][2]	= settr(127,0,3,83,83,"toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,gTag", 1, 512, 0);
		tr_2_src(83, "giop3.v10.nomig.pr", 435);
	trans[2][3]	= settr(128,0,4,84,84,"toAgentU[port]!SReply,objKey,opaqueData,opaqueData2", 1, 13, 0);
		tr_2_src(84, "giop3.v10.nomig.pr", 448);
	trans[2][6]	= settr(131,0,7,1,0,"break", 0, 2, 0);
	trans[2][7]	= settr(132,0,0,85,85,"-end-", 0, 3500, 0);
		tr_2_src(85, "giop3.v10.nomig.pr", 452);

	/* proctype 1: GIOPClient */

	trans[1] = (Trans **) emalloc(89*sizeof(Trans *));

	trans[1][86]	= settr(123,0,85,1,0,".(goto)", 0, 2, 0);
	T = trans[1][85] = settr(122,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:233 */
	T = T->nxt	= settr(122,0,1,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:233 */
	T = T->nxt	= settr(122,0,30,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:233 */
	    T->nxt	= settr(122,0,57,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:233 */
	trans[1][1]	= settr(38,0,4,86,86,"uin?URequest,tag,objref.objKey,objref.port", 1, 508, 0);
		tr_2_src(86, "giop3.v10.nomig.pr", 234);
		tr_2_src(87, "giop3.v10.nomig.pr", 240);
/*->*/	trans[1][4]	= settr(41,32,10,87,87,"D_STEP240", 0, 2, 0);
	trans[1][11]	= settr(48,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[1][10] = settr(47,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:246 */
	T = T->nxt	= settr(47,0,5,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:246 */
	    T->nxt	= settr(47,0,8,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:246 */
	trans[1][5]	= settr(42,0,6,88,0,"((usedReqId[reqId]!=0))", 1, 2, 0);
		tr_2_src(88, "giop3.v10.nomig.pr", 247);
	trans[1][6]	= settr(43,0,7,89,89,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(89, "giop3.v10.nomig.pr", 248);
	trans[1][7]	= settr(44,0,10,90,0,"assert((reqId<4))", 0, 2, 0);
		tr_2_src(90, "giop3.v10.nomig.pr", 249);
	trans[1][8]	= settr(45,0,13,91,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(91, "giop3.v10.nomig.pr", 251);
	trans[1][9]	= settr(46,0,13,1,0,"goto :b3", 0, 2, 0);
	trans[1][12]	= settr(49,0,13,1,0,"break", 0, 2, 0);
	trans[1][13]	= settr(50,0,21,92,92,"usedReqId[reqId] = 1", 1, 2, 0);
		tr_2_src(92, "giop3.v10.nomig.pr", 256);
		tr_2_src(93, "giop3.v10.nomig.pr", 257);
/*->*/	trans[1][21]	= settr(58,32,22,93,93,"D_STEP257", 1, 2, 0);
	trans[1][22]	= settr(59,0,28,94,94,"lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(94, "giop3.v10.nomig.pr", 271);
	T = trans[1][28] = settr(65,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:276 */
	T = T->nxt	= settr(65,0,23,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:276 */
	    T->nxt	= settr(65,0,24,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:276 */
	trans[1][23]	= settr(60,0,85,1,0,"(1)", 0, 2, 0);
	trans[1][29]	= settr(66,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][24]	= settr(61,0,25,1,0,"(1)", 0, 2, 0);
	trans[1][25]	= settr(62,0,26,95,95,"lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(95, "giop3.v10.nomig.pr", 283);
	trans[1][26]	= settr(63,0,27,96,96,"usedReqId[reqId] = 2", 1, 2, 0);
		tr_2_src(96, "giop3.v10.nomig.pr", 285);
	trans[1][27]	= settr(64,0,85,97,97,"uout!UReply,tag,3", 1, 9, 0);
		tr_2_src(97, "giop3.v10.nomig.pr", 288);
	trans[1][30]	= settr(67,0,34,98,98,"lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(98, "giop3.v10.nomig.pr", 291);
		tr_2_src(99, "giop3.v10.nomig.pr", 296);
/*->*/	trans[1][34]	= settr(71,32,55,99,99,"D_STEP296", 1, 2, 0);
	T = trans[1][55] = settr(92,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:303 */
	T = T->nxt	= settr(92,0,35,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:303 */
	    T->nxt	= settr(92,0,49,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:303 */
	trans[1][35]	= settr(72,0,47,100,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(100, "giop3.v10.nomig.pr", 304);
	T = trans[1][47] = settr(84,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:307 */
	T = T->nxt	= settr(84,0,36,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:307 */
	    T->nxt	= settr(84,0,40,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:307 */
	trans[1][36]	= settr(73,0,38,101,0,"((msg.mhdr.reply_status==4))", 0, 2, 0);
		tr_2_src(101, "giop3.v10.nomig.pr", 308);
		tr_2_src(102, "giop3.v10.nomig.pr", 313);
/*->*/	trans[1][38]	= settr(75,32,39,102,102,"D_STEP313", 0, 2, 0);
	trans[1][39]	= settr(76,0,85,103,103,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(103, "giop3.v10.nomig.pr", 317);
	trans[1][48]	= settr(85,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][40]	= settr(77,0,41,2,0,"else", 0, 2, 0);
	trans[1][41]	= settr(78,0,46,104,104,"uout!UReply,tags[reqId],msg.mhdr.reply_status", 1, 9, 0);
		tr_2_src(104, "giop3.v10.nomig.pr", 322);
		tr_2_src(105, "giop3.v10.nomig.pr", 325);
/*->*/	trans[1][46]	= settr(83,32,85,105,105,"D_STEP325", 1, 2, 0);
	trans[1][56]	= settr(93,0,85,1,0,".(goto)", 0, 2, 0);
	trans[1][49]	= settr(86,0,54,106,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(106, "giop3.v10.nomig.pr", 335);
		tr_2_src(107, "giop3.v10.nomig.pr", 337);
/*->*/	trans[1][54]	= settr(91,32,85,107,107,"D_STEP337", 1, 2, 0);
	trans[1][57]	= settr(94,0,58,108,108,"lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 510, 0);
		tr_2_src(108, "giop3.v10.nomig.pr", 346);
	trans[1][58]	= settr(95,0,82,109,109,"reqId = 0", 0, 2, 0);
		tr_2_src(109, "giop3.v10.nomig.pr", 355);
	trans[1][83]	= settr(120,0,82,1,0,".(goto)", 0, 2, 0);
	T = trans[1][82] = settr(119,0,0,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:356 */
	T = T->nxt	= settr(119,0,59,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:356 */
	    T->nxt	= settr(119,0,61,0,0,"DO", 0, 2, 0);
		/* giop3.v10.nomig.pr:356 */
	trans[1][59]	= settr(96,0,85,110,110,"((reqId==4))", 0, 2, 0);
		tr_2_src(110, "giop3.v10.nomig.pr", 357);
	trans[1][60]	= settr(97,0,85,1,0,"goto :b4", 0, 2, 0);
	trans[1][61]	= settr(98,0,79,111,0,"((reqId!=4))", 0, 2, 0);
		tr_2_src(111, "giop3.v10.nomig.pr", 360);
	T = trans[1][79] = settr(116,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:361 */
	T = T->nxt	= settr(116,0,62,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:361 */
	    T->nxt	= settr(116,0,78,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:361 */
	trans[1][62]	= settr(99,0,76,112,0,"((objRefs[reqId].port==svrPort))", 0, 2, 0);
		tr_2_src(112, "giop3.v10.nomig.pr", 362);
	T = trans[1][76] = settr(113,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:364 */
	T = T->nxt	= settr(113,0,63,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:364 */
	T = T->nxt	= settr(113,0,69,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:364 */
	    T->nxt	= settr(113,0,75,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:364 */
	trans[1][63]	= settr(100,0,67,113,0,"((usedReqId[reqId]==1))", 1, 2, 0);
		tr_2_src(113, "giop3.v10.nomig.pr", 365);
		tr_2_src(114, "giop3.v10.nomig.pr", 372);
/*->*/	trans[1][67]	= settr(104,32,68,114,114,"D_STEP372", 0, 2, 0);
	trans[1][68]	= settr(105,0,81,115,115,"lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag", 1, 11, 0);
		tr_2_src(115, "giop3.v10.nomig.pr", 377);
	trans[1][77]	= settr(114,0,81,1,0,".(goto)", 0, 2, 0);
	trans[1][69]	= settr(106,0,74,116,0,"((usedReqId[reqId]==2))", 1, 2, 0);
		tr_2_src(116, "giop3.v10.nomig.pr", 380);
		tr_2_src(117, "giop3.v10.nomig.pr", 384);
/*->*/	trans[1][74]	= settr(111,32,81,117,117,"D_STEP384", 1, 2, 0);
	trans[1][75]	= settr(112,0,81,118,0,"((usedReqId[reqId]==0))", 1, 2, 0);
		tr_2_src(118, "giop3.v10.nomig.pr", 391);
	trans[1][80]	= settr(117,0,81,1,0,".(goto)", 0, 2, 0);
	trans[1][78]	= settr(115,0,81,119,0,"((objRefs[reqId].port!=svrPort))", 0, 2, 0);
		tr_2_src(119, "giop3.v10.nomig.pr", 396);
	trans[1][81]	= settr(118,0,82,120,120,"reqId = (reqId+1)", 0, 2, 0);
		tr_2_src(120, "giop3.v10.nomig.pr", 399);
	trans[1][84]	= settr(121,0,85,1,0,"break", 0, 2, 0);
	trans[1][87]	= settr(124,0,88,1,0,"break", 0, 2, 0);
	trans[1][88]	= settr(125,0,0,121,121,"-end-", 0, 3500, 0);
		tr_2_src(121, "giop3.v10.nomig.pr", 404);

	/* proctype 0: User */

	trans[0] = (Trans **) emalloc(39*sizeof(Trans *));

	T = trans[ 0][11] = settr(10,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:148 */
	T->nxt	= settr(10,2,1,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:148 */
	trans[0][1]	= settr(0,2,7,122,122,"i = 0", 1, 2, 0);
		tr_2_src(122, "giop3.v10.nomig.pr", 149);
	trans[0][8]	= settr(7,2,7,1,0,".(goto)", 1, 2, 0);
	T = trans[0][7] = settr(6,2,0,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:150 */
	T = T->nxt	= settr(6,2,2,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:150 */
	    T->nxt	= settr(6,2,5,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:150 */
	trans[0][2]	= settr(1,2,3,123,0,"((i<2))", 1, 2, 0);
		tr_2_src(123, "giop3.v10.nomig.pr", 151);
	trans[0][3]	= settr(2,2,4,124,0,"((gPublished[i]!=255))", 1, 2, 0);
		tr_2_src(124, "giop3.v10.nomig.pr", 152);
	trans[0][4]	= settr(3,2,7,125,125,"i = (i+1)", 1, 2, 0);
		tr_2_src(125, "giop3.v10.nomig.pr", 153);
	trans[0][5]	= settr(4,2,9,126,126,"((i==2))", 1, 2, 0);
		tr_2_src(126, "giop3.v10.nomig.pr", 154);
	trans[0][6]	= settr(5,2,9,1,0,"goto :b0", 1, 2, 0);
	trans[0][9]	= settr(8,2,10,1,0,"break", 1, 2, 0);
	trans[0][10]	= settr(9,0,23,127,127,"i = 0", 1, 2, 0);
		tr_2_src(127, "giop3.v10.nomig.pr", 157);
	T = trans[ 0][23] = settr(22,2,0,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:164 */
	T->nxt	= settr(22,2,12,0,0,"ATOMIC", 1, 2, 0);
		/* giop3.v10.nomig.pr:164 */
	trans[0][12]	= settr(11,2,19,128,128,"i = 0", 1, 2, 0);
		tr_2_src(128, "giop3.v10.nomig.pr", 165);
	trans[0][20]	= settr(19,2,19,1,0,".(goto)", 1, 2, 0);
	T = trans[0][19] = settr(18,2,0,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:166 */
	T = T->nxt	= settr(18,2,13,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:166 */
	    T->nxt	= settr(18,2,17,0,0,"DO", 1, 2, 0);
		/* giop3.v10.nomig.pr:166 */
	trans[0][13]	= settr(12,2,14,129,0,"((i<=(2-1)))", 1, 2, 0);
		tr_2_src(129, "giop3.v10.nomig.pr", 167);
	trans[0][14]	= settr(13,2,15,130,130,"objref.objKey = i", 1, 2, 0);
		tr_2_src(130, "giop3.v10.nomig.pr", 168);
	trans[0][15]	= settr(14,2,21,131,131,"objref.port = gPublished[i]", 1, 2, 0);
		tr_2_src(131, "giop3.v10.nomig.pr", 169);
	trans[0][16]	= settr(15,2,21,1,0,"goto :b1", 1, 2, 0);
	trans[0][17]	= settr(16,2,18,132,0,"((i<(2-1)))", 1, 2, 0);
		tr_2_src(132, "giop3.v10.nomig.pr", 171);
	trans[0][18]	= settr(17,2,19,133,133,"i = (i+1)", 1, 2, 0);
		tr_2_src(133, "giop3.v10.nomig.pr", 172);
	trans[0][21]	= settr(20,2,22,1,0,"break", 1, 2, 0);
	trans[0][22]	= settr(21,0,24,134,134,"i = 0", 1, 2, 0);
		tr_2_src(134, "giop3.v10.nomig.pr", 174);
	trans[0][24]	= settr(23,0,25,135,0,"((turn==_pid))", 1, 2, 0);
		tr_2_src(135, "giop3.v10.nomig.pr", 178);
	trans[0][25]	= settr(24,0,26,136,136,"lout!URequest,tag,objref.objKey,objref.port", 1, 5, 0);
		tr_2_src(136, "giop3.v10.nomig.pr", 181);
	trans[0][26]	= settr(25,0,27,137,137,"turn = Pid[7]", 1, 2, 0);
		tr_2_src(137, "giop3.v10.nomig.pr", 184);
	trans[0][27]	= settr(26,0,36,138,138,"lin?UReply,eval(tag),status", 1, 504, 0);
		tr_2_src(138, "giop3.v10.nomig.pr", 190);
	T = trans[0][36] = settr(35,0,0,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:195 */
	T = T->nxt	= settr(35,0,28,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:195 */
	T = T->nxt	= settr(35,0,30,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:195 */
	T = T->nxt	= settr(35,0,32,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:195 */
	    T->nxt	= settr(35,0,34,0,0,"IF", 0, 2, 0);
		/* giop3.v10.nomig.pr:195 */
	trans[0][28]	= settr(27,0,29,139,139,"((status==1))", 0, 2, 0);
		tr_2_src(139, "giop3.v10.nomig.pr", 196);
	trans[0][29]	= settr(28,0,38,140,0,"printf('Request satisfied\\n')", 0, 2, 0);
		tr_2_src(140, "giop3.v10.nomig.pr", 198);
	trans[0][37]	= settr(36,0,38,1,0,".(goto)", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,141,141,"((status==2))", 0, 2, 0);
		tr_2_src(141, "giop3.v10.nomig.pr", 200);
	trans[0][31]	= settr(30,0,38,142,0,"printf('Request failed: user exception\\n')", 0, 2, 0);
		tr_2_src(142, "giop3.v10.nomig.pr", 202);
	trans[0][32]	= settr(31,0,33,143,143,"((status==3))", 0, 2, 0);
		tr_2_src(143, "giop3.v10.nomig.pr", 204);
	trans[0][33]	= settr(32,0,38,144,0,"printf('Request failed: system exception\\n')", 0, 2, 0);
		tr_2_src(144, "giop3.v10.nomig.pr", 206);
	trans[0][34]	= settr(33,0,35,145,145,"((status==5))", 0, 2, 0);
		tr_2_src(145, "giop3.v10.nomig.pr", 208);
	trans[0][35]	= settr(34,0,38,146,0,"printf('Request failed: object does not exist\\n')", 0, 2, 0);
		tr_2_src(146, "giop3.v10.nomig.pr", 209);
	trans[0][38]	= settr(37,0,0,147,147,"-end-", 0, 3500, 0);
		tr_2_src(147, "giop3.v10.nomig.pr", 211);
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
