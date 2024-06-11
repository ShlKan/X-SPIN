#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - ./v10b.nomig.never:16 - [((((User[Pid[6]]._p==URequestSent)&&(User[Pid[7]]._p==URequestSent))&&((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!((((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[7])))->_p)==27))&&((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - ./v10b.nomig.never:17 - [(((User[Pid[6]]._p==URequestSent)&&(User[Pid[7]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[7])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - ./v10b.nomig.never:22 - [(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 12 - ./v10b.nomig.never:23 - [((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][12] = 1;
		if (!(( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))&&((((int)now.gTag)==((int)now.Pid[7]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 13 - ./v10b.nomig.never:23 - [assert(!((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		spin_assert( !(( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))&&((((int)now.gTag)==((int)now.Pid[7]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))), " !(( !(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed))))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 18 - ./v10b.nomig.never:27 - [(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][18] = 1;
		if (!( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 20 - ./v10b.nomig.never:28 - [((!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))&&((gTag==Pid[7])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][20] = 1;
		if (!(( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))&&((((int)now.gTag)==((int)now.Pid[7]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 25 - ./v10b.nomig.never:32 - [(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][25] = 1;
		if (!(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 26 - ./v10b.nomig.never:32 - [assert(!(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][26] = 1;
		spin_assert( !(((((int)now.gTag)==((int)now.Pid[6]))&&(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==3))), " !(((gTag==Pid[6])&&(Server[Pid[8]]._p==UserProcessed)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 34 - ./v10b.nomig.never:37 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 13: // STATE 1 - giop3.v10.nomig.pr:743 - [Pid[0] = run transport(0,toTransportU[0],toClientL)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[0]);
		now.Pid[0] = addproc(II, 1, 4, 0, now.toTransportU[0], now.toClientL, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[0]", ((int)now.Pid[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - giop3.v10.nomig.pr:744 - [Pid[1] = run transport(1,toTransportU[1],toAgentL[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[1]);
		now.Pid[1] = addproc(II, 1, 4, 1, now.toTransportU[1], now.toAgentL[1], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[1]", ((int)now.Pid[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - giop3.v10.nomig.pr:745 - [Pid[2] = run transport(2,toTransportU[2],toAgentL[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][3] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[2]);
		now.Pid[2] = addproc(II, 1, 4, 2, now.toTransportU[2], now.toAgentL[2], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[2]", ((int)now.Pid[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 4 - giop3.v10.nomig.pr:747 - [Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][4] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[3]);
		now.Pid[3] = addproc(II, 1, 1, now.toClientU, now.toUser, now.toClientL, now.toTransportU[0], 0);
#ifdef VAR_RANGES
		logval("Pid[3]", ((int)now.Pid[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - giop3.v10.nomig.pr:749 - [Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[4]);
		now.Pid[4] = addproc(II, 1, 3, 1, now.toAgentU[1], now.toServer[1], now.toAgentL[1], now.toTransportU[1]);
#ifdef VAR_RANGES
		logval("Pid[4]", ((int)now.Pid[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - giop3.v10.nomig.pr:750 - [Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][6] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[5]);
		now.Pid[5] = addproc(II, 1, 3, 2, now.toAgentU[2], now.toServer[2], now.toAgentL[2], now.toTransportU[2]);
#ifdef VAR_RANGES
		logval("Pid[5]", ((int)now.Pid[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 7 - giop3.v10.nomig.pr:752 - [Pid[6] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][7] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[6]);
		now.Pid[6] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[6]", ((int)now.Pid[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - giop3.v10.nomig.pr:753 - [Pid[7] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][8] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[7]);
		now.Pid[7] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[7]", ((int)now.Pid[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 9 - giop3.v10.nomig.pr:755 - [Pid[8] = run Server(1,0)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][9] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[8]);
		now.Pid[8] = addproc(II, 1, 2, 1, 0, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[8]", ((int)now.Pid[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 10 - giop3.v10.nomig.pr:756 - [Pid[9] = run Server(2,1)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][10] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[9]);
		now.Pid[9] = addproc(II, 1, 2, 2, 1, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[9]", ((int)now.Pid[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 11 - giop3.v10.nomig.pr:758 - [turn = Pid[6]] (0:0:1 - 0)
		IfNotBlocked
		reached[5][11] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = ((int)now.Pid[6]);
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 13 - giop3.v10.nomig.pr:761 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC transport */
	case 25: // STATE 1 - giop3.v10.nomig.pr:668 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[4][1] = 1;
		if (q_zero(((P4 *)this)->uin))
		{	if (boq != ((P4 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P4 *)this)->uin) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P4 *)this)->msgType;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)this)->dstport);
		(trpt+1)->bup.ovals[2] = ((int)((P4 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[3] = ((int)((P4 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[4] = ((int)((P4 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[5] = ((int)((P4 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[6] = ((int)((P4 *)this)->msg.mhdr.tag);
		;
		((P4 *)this)->msgType = qrecv(((P4 *)this)->uin, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("transport:msgType", ((P4 *)this)->msgType);
#endif
		;
		((P4 *)this)->dstport = qrecv(((P4 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("transport:dstport", ((int)((P4 *)this)->dstport));
#endif
		;
		((P4 *)this)->msg.mhdr.request_id = qrecv(((P4 *)this)->uin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.request_id", ((int)((P4 *)this)->msg.mhdr.request_id));
#endif
		;
		((P4 *)this)->msg.mhdr.object_key = qrecv(((P4 *)this)->uin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.object_key", ((int)((P4 *)this)->msg.mhdr.object_key));
#endif
		;
		((P4 *)this)->msg.mhdr.reply_status = qrecv(((P4 *)this)->uin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.reply_status", ((int)((P4 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P4 *)this)->msg.mhdr.forward_port = qrecv(((P4 *)this)->uin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.forward_port", ((int)((P4 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P4 *)this)->msg.mhdr.tag = qrecv(((P4 *)this)->uin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.tag", ((int)((P4 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)this)->uin);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->dstport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P4 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 2 - giop3.v10.nomig.pr:676 - [toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[4][2] = 1;
		if (q_full(now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ]);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ], 0, ((P4 *)this)->msgType, ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]), ((int)((P4 *)this)->port), ((int)((P4 *)this)->msg.mhdr.request_id), ((int)((P4 *)this)->msg.mhdr.object_key), ((int)((P4 *)this)->msg.mhdr.reply_status), ((int)((P4 *)this)->msg.mhdr.forward_port), ((int)((P4 *)this)->msg.mhdr.tag), 8);
		if (q_zero(now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ])) { boq = now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 3 - giop3.v10.nomig.pr:679 - [((msgType==CloseConnection))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((((P4 *)this)->msgType==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msgType */  (trpt+1)->bup.oval = ((P4 *)this)->msgType;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)this)->msgType = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 4 - giop3.v10.nomig.pr:680 - [connId[dstport] = ((connId[dstport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->dstport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:dstport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 5 - giop3.v10.nomig.pr:681 - [((msgType!=CloseConnection))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][5] = 1;
		if (!((((P4 *)this)->msgType!=7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msgType */  (trpt+1)->bup.oval = ((P4 *)this)->msgType;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)this)->msgType = 0;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 9 - giop3.v10.nomig.pr:688 - [(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])] (0:0:0 - 0)
		IfNotBlocked
		reached[4][9] = 1;
		if (!(not_RV(((P4 *)this)->savedmsg) && \
		(q_len(((P4 *)this)->savedmsg) > 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 10 - giop3.v10.nomig.pr:689 - [savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
		reached[4][10] = 1;
		if (q_zero(((P4 *)this)->savedmsg))
		{	if (boq != ((P4 *)this)->savedmsg) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P4 *)this)->savedmsg) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P4 *)this)->msgType;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)this)->rcvConnId);
		(trpt+1)->bup.ovals[2] = ((int)((P4 *)this)->srcport);
		(trpt+1)->bup.ovals[3] = ((int)((P4 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[4] = ((int)((P4 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[5] = ((int)((P4 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[6] = ((int)((P4 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[7] = ((int)((P4 *)this)->msg.mhdr.tag);
		;
		((P4 *)this)->msgType = qrecv(((P4 *)this)->savedmsg, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("transport:msgType", ((P4 *)this)->msgType);
#endif
		;
		((P4 *)this)->rcvConnId = qrecv(((P4 *)this)->savedmsg, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("transport:rcvConnId", ((int)((P4 *)this)->rcvConnId));
#endif
		;
		((P4 *)this)->srcport = qrecv(((P4 *)this)->savedmsg, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("transport:srcport", ((int)((P4 *)this)->srcport));
#endif
		;
		((P4 *)this)->msg.mhdr.request_id = qrecv(((P4 *)this)->savedmsg, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.request_id", ((int)((P4 *)this)->msg.mhdr.request_id));
#endif
		;
		((P4 *)this)->msg.mhdr.object_key = qrecv(((P4 *)this)->savedmsg, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.object_key", ((int)((P4 *)this)->msg.mhdr.object_key));
#endif
		;
		((P4 *)this)->msg.mhdr.reply_status = qrecv(((P4 *)this)->savedmsg, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.reply_status", ((int)((P4 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P4 *)this)->msg.mhdr.forward_port = qrecv(((P4 *)this)->savedmsg, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.forward_port", ((int)((P4 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P4 *)this)->msg.mhdr.tag = qrecv(((P4 *)this)->savedmsg, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.tag", ((int)((P4 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)this)->savedmsg);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->rcvConnId)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->srcport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P4 *)this)->savedmsg))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 16 - giop3.v10.nomig.pr:695 - [toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
		reached[4][16] = 1;
		if (q_zero(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ]))
		{	if (boq != now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P4 *)this)->msgType;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)this)->rcvConnId);
		(trpt+1)->bup.ovals[2] = ((int)((P4 *)this)->srcport);
		(trpt+1)->bup.ovals[3] = ((int)((P4 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[4] = ((int)((P4 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[5] = ((int)((P4 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[6] = ((int)((P4 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[7] = ((int)((P4 *)this)->msg.mhdr.tag);
		;
		((P4 *)this)->msgType = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("transport:msgType", ((P4 *)this)->msgType);
#endif
		;
		((P4 *)this)->rcvConnId = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("transport:rcvConnId", ((int)((P4 *)this)->rcvConnId));
#endif
		;
		((P4 *)this)->srcport = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("transport:srcport", ((int)((P4 *)this)->srcport));
#endif
		;
		((P4 *)this)->msg.mhdr.request_id = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.request_id", ((int)((P4 *)this)->msg.mhdr.request_id));
#endif
		;
		((P4 *)this)->msg.mhdr.object_key = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.object_key", ((int)((P4 *)this)->msg.mhdr.object_key));
#endif
		;
		((P4 *)this)->msg.mhdr.reply_status = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.reply_status", ((int)((P4 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P4 *)this)->msg.mhdr.forward_port = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.forward_port", ((int)((P4 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P4 *)this)->msg.mhdr.tag = qrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.tag", ((int)((P4 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ]);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->rcvConnId)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->srcport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 17 - giop3.v10.nomig.pr:706 - [((rcvConnId==connId[srcport]))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][17] = 1;
		if (!((((int)((P4 *)this)->rcvConnId)==((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 18 - giop3.v10.nomig.pr:708 - [uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[4][18] = 1;
		if (q_full(((P4 *)this)->uout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)this)->uout);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->srcport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)this)->uout, 0, ((P4 *)this)->msgType, ((int)((P4 *)this)->srcport), ((int)((P4 *)this)->msg.mhdr.request_id), ((int)((P4 *)this)->msg.mhdr.object_key), ((int)((P4 *)this)->msg.mhdr.reply_status), ((int)((P4 *)this)->msg.mhdr.forward_port), ((int)((P4 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P4 *)this)->uout)) { boq = ((P4 *)this)->uout; };
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 19 - giop3.v10.nomig.pr:709 - [(timeout)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][19] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 36: // STATE 20 - giop3.v10.nomig.pr:717 - [savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[4][20] = 1;
		if (q_full(((P4 *)this)->savedmsg))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P4 *)this)->savedmsg);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->rcvConnId)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->srcport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P4 *)this)->savedmsg, 0, ((P4 *)this)->msgType, ((int)((P4 *)this)->rcvConnId), ((int)((P4 *)this)->srcport), ((int)((P4 *)this)->msg.mhdr.request_id), ((int)((P4 *)this)->msg.mhdr.object_key), ((int)((P4 *)this)->msg.mhdr.reply_status), ((int)((P4 *)this)->msg.mhdr.forward_port), ((int)((P4 *)this)->msg.mhdr.tag), 8);
		if (q_zero(((P4 *)this)->savedmsg)) { boq = ((P4 *)this)->savedmsg; };
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 21 - giop3.v10.nomig.pr:718 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[4][21] = 1;
		if (q_zero(((P4 *)this)->uin))
		{	if (boq != ((P4 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P4 *)this)->uin) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P4 *)this)->msgType;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)this)->dstport);
		(trpt+1)->bup.ovals[2] = ((int)((P4 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[3] = ((int)((P4 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[4] = ((int)((P4 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[5] = ((int)((P4 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[6] = ((int)((P4 *)this)->msg.mhdr.tag);
		;
		((P4 *)this)->msgType = qrecv(((P4 *)this)->uin, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("transport:msgType", ((P4 *)this)->msgType);
#endif
		;
		((P4 *)this)->dstport = qrecv(((P4 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("transport:dstport", ((int)((P4 *)this)->dstport));
#endif
		;
		((P4 *)this)->msg.mhdr.request_id = qrecv(((P4 *)this)->uin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.request_id", ((int)((P4 *)this)->msg.mhdr.request_id));
#endif
		;
		((P4 *)this)->msg.mhdr.object_key = qrecv(((P4 *)this)->uin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.object_key", ((int)((P4 *)this)->msg.mhdr.object_key));
#endif
		;
		((P4 *)this)->msg.mhdr.reply_status = qrecv(((P4 *)this)->uin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.reply_status", ((int)((P4 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P4 *)this)->msg.mhdr.forward_port = qrecv(((P4 *)this)->uin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.forward_port", ((int)((P4 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P4 *)this)->msg.mhdr.tag = qrecv(((P4 *)this)->uin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("transport:msg.mhdr.tag", ((int)((P4 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P4 *)this)->uin);
		sprintf(simtmp, "%d", ((P4 *)this)->msgType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->dstport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P4 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 38: // STATE 25 - giop3.v10.nomig.pr:722 - [((rcvConnId!=connId[srcport]))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][25] = 1;
		if (!((((int)((P4 *)this)->rcvConnId)!=((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: rcvConnId */  (trpt+1)->bup.oval = ((P4 *)this)->rcvConnId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)this)->rcvConnId = 0;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 26 - giop3.v10.nomig.pr:723 - [printf('Old message encountered -> discarded\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[4][26] = 1;
		Printf("Old message encountered -> discarded\n");
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 29 - giop3.v10.nomig.pr:728 - [((msgType==CloseConnection))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][29] = 1;
		if (!((((P4 *)this)->msgType==7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msgType */  (trpt+1)->bup.oval = ((P4 *)this)->msgType;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)this)->msgType = 0;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 30 - giop3.v10.nomig.pr:729 - [connId[srcport] = ((connId[srcport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->srcport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:srcport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 31 - giop3.v10.nomig.pr:730 - [((msgType!=CloseConnection))] (0:0:1 - 0)
		IfNotBlocked
		reached[4][31] = 1;
		if (!((((P4 *)this)->msgType!=7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msgType */  (trpt+1)->bup.oval = ((P4 *)this)->msgType;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)this)->msgType = 0;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 37 - giop3.v10.nomig.pr:735 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[4][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPAgent */
	case 44: // STATE 1 - giop3.v10.nomig.pr:469 - [uin?SRegister,objKey,_,_] (0:0:3 - 0)
		reached[3][1] = 1;
		if (q_zero(((P3 *)this)->uin))
		{	if (boq != ((P3 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P3 *)this)->uin) == 0) continue;

		XX=1;
		if (4 != qrecv(((P3 *)this)->uin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->objKey);
		(trpt+1)->bup.ovals[1] = qrecv(((P3 *)this)->uin, XX-1, 2, 0);
		(trpt+1)->bup.ovals[2] = qrecv(((P3 *)this)->uin, XX-1, 3, 0);
		;
		((P3 *)this)->objKey = qrecv(((P3 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
		qrecv(((P3 *)this)->uin, XX-1, 2, 0);
		qrecv(((P3 *)this)->uin, XX-1, 3, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->uin);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P3 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 4 - giop3.v10.nomig.pr:471 - [D_STEP471]
		IfNotBlocked

		reached[3][4] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_134_0: /* 2 */
		now.gPublished[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("gPublished[GIOPAgent:objKey]", ((int)now.gPublished[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
S_135_0: /* 2 */
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		goto S_214_0;
S_214_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 46: // STATE 5 - giop3.v10.nomig.pr:481 - [uin?SMigrateReq,objKey,clPort,_] (0:0:3 - 0)
		reached[3][5] = 1;
		if (q_zero(((P3 *)this)->uin))
		{	if (boq != ((P3 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P3 *)this)->uin) == 0) continue;

		XX=1;
		if (1 != qrecv(((P3 *)this)->uin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->objKey);
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->clPort);
		(trpt+1)->bup.ovals[2] = qrecv(((P3 *)this)->uin, XX-1, 3, 0);
		;
		((P3 *)this)->objKey = qrecv(((P3 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
		((P3 *)this)->clPort = qrecv(((P3 *)this)->uin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:clPort", ((int)((P3 *)this)->clPort));
#endif
		;
		qrecv(((P3 *)this)->uin, XX-1, 3, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->uin);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P3 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 6 - giop3.v10.nomig.pr:486 - [registered[objKey] = clPort] (0:0:1 - 0)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->clPort);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 7 - giop3.v10.nomig.pr:490 - [lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
		reached[3][7] = 1;
		if (q_zero(((P3 *)this)->lin))
		{	if (boq != ((P3 *)this)->lin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P3 *)this)->lin) == 0) continue;

		XX=1;
		if (10 != qrecv(((P3 *)this)->lin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->clPort);
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[3] = ((int)((P3 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[4] = ((int)((P3 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[5] = ((int)((P3 *)this)->msg.mhdr.tag);
		;
		((P3 *)this)->clPort = qrecv(((P3 *)this)->lin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:clPort", ((int)((P3 *)this)->clPort));
#endif
		;
		((P3 *)this)->msg.mhdr.request_id = qrecv(((P3 *)this)->lin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
		((P3 *)this)->msg.mhdr.object_key = qrecv(((P3 *)this)->lin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
		((P3 *)this)->msg.mhdr.reply_status = qrecv(((P3 *)this)->lin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P3 *)this)->msg.mhdr.forward_port = qrecv(((P3 *)this)->lin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.forward_port", ((int)((P3 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P3 *)this)->msg.mhdr.tag = qrecv(((P3 *)this)->lin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.tag", ((int)((P3 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->lin);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P3 *)this)->lin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 11 - giop3.v10.nomig.pr:495 - [D_STEP495]
		IfNotBlocked

		reached[3][11] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_140_0: /* 2 */
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
S_141_0: /* 2 */
		((P3 *)this)->objKey = ((int)((P3 *)this)->msg.mhdr.object_key);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
S_142_0: /* 2 */
		now.numRequestsRcvd[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRequestsRcvd[GIOPAgent:port]", ((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_169_0;
S_169_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 50: // STATE 12 - giop3.v10.nomig.pr:503 - [((registered[objKey]==port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 15 - giop3.v10.nomig.pr:508 - [D_STEP508]
		IfNotBlocked

		reached[3][15] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_145_0: /* 2 */
		((P3 *)this)->connState = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
S_146_0: /* 2 */
		srequest_reqId = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("srequest_reqId", ((int)srequest_reqId));
#endif
		;
		goto S_148_0;
S_148_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 52: // STATE 16 - giop3.v10.nomig.pr:514 - [uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][16] = 1;
		if (q_full(((P3 *)this)->uout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P3 *)this)->uout);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->reqId)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P3 *)this)->uout, 0, 3, ((int)((P3 *)this)->objKey), ((int)((P3 *)this)->reqId), ((int)((P3 *)this)->clPort), ((int)((P3 *)this)->msg.mhdr.tag), 0, 0, 0, 5);
		if (q_zero(((P3 *)this)->uout)) { boq = ((P3 *)this)->uout; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 20 - giop3.v10.nomig.pr:517 - [D_STEP517]
		IfNotBlocked

		reached[3][20] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_149_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_150_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)+1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_151_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		goto S_170_0;
S_170_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 54: // STATE 21 - giop3.v10.nomig.pr:525 - [((registered[objKey]!=port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][21] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])!=((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 22 - giop3.v10.nomig.pr:528 - [((registered[objKey]==255))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][22] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 26 - giop3.v10.nomig.pr:530 - [D_STEP530]
		IfNotBlocked

		reached[3][26] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_155_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_156_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_157_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 5;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_166_0;
S_166_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 57: // STATE 32 - giop3.v10.nomig.pr:539 - [D_STEP539]
		IfNotBlocked

		reached[3][32] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_160_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_161_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_162_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 4;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
S_163_0: /* 2 */
		((P3 *)this)->msg.mhdr.forward_port = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.forward_port", ((int)((P3 *)this)->msg.mhdr.forward_port));
#endif
		;
		goto S_166_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 58: // STATE 35 - giop3.v10.nomig.pr:548 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][35] = 1;
		if (q_full(((P3 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P3 *)this)->lout);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P3 *)this)->lout, 0, 9, ((int)((P3 *)this)->clPort), ((int)((P3 *)this)->msg.mhdr.request_id), ((int)((P3 *)this)->msg.mhdr.object_key), ((int)((P3 *)this)->msg.mhdr.reply_status), ((int)((P3 *)this)->msg.mhdr.forward_port), ((int)((P3 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P3 *)this)->lout)) { boq = ((P3 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 36 - giop3.v10.nomig.pr:549 - [numRepliesSent[port] = (numRepliesSent[port]+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[3][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]);
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 39 - giop3.v10.nomig.pr:552 - [uin?SReply,objKey,reqId,clPort] (0:0:3 - 0)
		reached[3][39] = 1;
		if (q_zero(((P3 *)this)->uin))
		{	if (boq != ((P3 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P3 *)this)->uin) == 0) continue;

		XX=1;
		if (2 != qrecv(((P3 *)this)->uin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->objKey);
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->reqId);
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)this)->clPort);
		;
		((P3 *)this)->objKey = qrecv(((P3 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
		((P3 *)this)->reqId = qrecv(((P3 *)this)->uin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
		((P3 *)this)->clPort = qrecv(((P3 *)this)->uin, XX-1, 3, 1);
#ifdef VAR_RANGES
		logval("GIOPAgent:clPort", ((int)((P3 *)this)->clPort));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->uin);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->reqId)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P3 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 40 - giop3.v10.nomig.pr:558 - [assert((requested[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][40] = 1;
		spin_assert((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])!=0), "(requested[reqId]!=0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 41 - giop3.v10.nomig.pr:560 - [sreply_reqId = reqId] (0:0:1 - 0)
		IfNotBlocked
		reached[3][41] = 1;
		(trpt+1)->bup.oval = ((int)sreply_reqId);
		sreply_reqId = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("sreply_reqId", ((int)sreply_reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 42 - giop3.v10.nomig.pr:564 - [((requested[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][42] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 46 - giop3.v10.nomig.pr:567 - [D_STEP567]
		IfNotBlocked

		reached[3][46] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_175_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_176_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_177_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		goto S_191_0;
S_191_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 65: // STATE 47 - giop3.v10.nomig.pr:574 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][47] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 51 - giop3.v10.nomig.pr:575 - [D_STEP575]
		IfNotBlocked

		reached[3][51] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_180_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_181_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_182_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_184_0;
S_184_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 67: // STATE 52 - giop3.v10.nomig.pr:581 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][52] = 1;
		if (q_full(((P3 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P3 *)this)->lout);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P3 *)this)->lout, 0, 9, ((int)((P3 *)this)->clPort), ((int)((P3 *)this)->msg.mhdr.request_id), ((int)((P3 *)this)->msg.mhdr.object_key), ((int)((P3 *)this)->msg.mhdr.reply_status), ((int)((P3 *)this)->msg.mhdr.forward_port), ((int)((P3 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P3 *)this)->lout)) { boq = ((P3 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 57 - giop3.v10.nomig.pr:583 - [D_STEP583]
		IfNotBlocked

		reached[3][57] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_185_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_186_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_187_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_188_0: /* 2 */
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_191_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 69: // STATE 60 - giop3.v10.nomig.pr:596 - [((numOutstandingReqs==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][60] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 61 - giop3.v10.nomig.pr:598 - [((connState==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][61] = 1;
		if (!((((int)((P3 *)this)->connState)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: connState */  (trpt+1)->bup.oval = ((P3 *)this)->connState;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->connState = 0;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 62 - giop3.v10.nomig.pr:601 - [lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][62] = 1;
		if (q_full(((P3 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P3 *)this)->lout);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P3 *)this)->lout, 0, 7, ((int)((P3 *)this)->clPort), ((int)((P3 *)this)->msg.mhdr.request_id), ((int)((P3 *)this)->msg.mhdr.object_key), ((int)((P3 *)this)->msg.mhdr.reply_status), ((int)((P3 *)this)->msg.mhdr.forward_port), ((int)((P3 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P3 *)this)->lout)) { boq = ((P3 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 72: // STATE 66 - giop3.v10.nomig.pr:603 - [D_STEP603]
		IfNotBlocked

		reached[3][66] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_195_0: /* 2 */
		((P3 *)this)->connState = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
S_196_0: /* 2 */
		now.numRequestsRcvd[ Index(((P3 *)this)->port, 3) ] = 0;
#ifdef VAR_RANGES
		logval("numRequestsRcvd[GIOPAgent:port]", ((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
S_197_0: /* 2 */
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = 0;
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_201_0;
S_201_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 73: // STATE 67 - giop3.v10.nomig.pr:609 - [((connState!=1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][67] = 1;
		if (!((((int)((P3 *)this)->connState)!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 70 - giop3.v10.nomig.pr:613 - [((numOutstandingReqs!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][70] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 73 - giop3.v10.nomig.pr:618 - [lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[3][73] = 1;
		if (q_zero(((P3 *)this)->lin))
		{	if (boq != ((P3 *)this)->lin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P3 *)this)->lin) == 0) continue;

		XX=1;
		if (8 != qrecv(((P3 *)this)->lin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)this)->clPort);
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[3] = ((int)((P3 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[4] = ((int)((P3 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[5] = ((int)((P3 *)this)->msg.mhdr.tag);
		;
		((P3 *)this)->clPort = qrecv(((P3 *)this)->lin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:clPort", ((int)((P3 *)this)->clPort));
#endif
		;
		((P3 *)this)->msg.mhdr.request_id = qrecv(((P3 *)this)->lin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
		((P3 *)this)->msg.mhdr.object_key = qrecv(((P3 *)this)->lin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
		((P3 *)this)->msg.mhdr.reply_status = qrecv(((P3 *)this)->lin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P3 *)this)->msg.mhdr.forward_port = qrecv(((P3 *)this)->lin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.forward_port", ((int)((P3 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P3 *)this)->msg.mhdr.tag = qrecv(((P3 *)this)->lin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.tag", ((int)((P3 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P3 *)this)->lin);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->clPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P3 *)this)->lin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 2: clPort */  (trpt+1)->bup.ovals[6] = ((P3 *)this)->clPort;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->clPort = 0;
		_m = 4; goto P999; /* 0 */
	case 76: // STATE 74 - giop3.v10.nomig.pr:619 - [reqId = msg.mhdr.request_id] (0:0:1 - 0)
		IfNotBlocked
		reached[3][74] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->reqId);
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 75 - giop3.v10.nomig.pr:621 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][75] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 76 - giop3.v10.nomig.pr:624 - [requested[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[3][76] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]);
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 77 - giop3.v10.nomig.pr:626 - [((requested[reqId]==0))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][77] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P3 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 78 - giop3.v10.nomig.pr:629 - [((requested[reqId]==2))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][78] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P3 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 84 - giop3.v10.nomig.pr:635 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][84] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Server */
	case 82: // STATE 1 - giop3.v10.nomig.pr:430 - [toAgentU[port]!SRegister,objKey,port,0] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ], 0, 4, ((int)((P2 *)this)->objKey), ((int)((P2 *)this)->port), 0, 0, 0, 0, 0, 4);
		if (q_zero(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ])) { boq = now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 2 - giop3.v10.nomig.pr:435 - [toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,gTag] (0:0:3 - 0)
		reached[2][2] = 1;
		if (q_zero(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]))
		{	if (boq != now.toServer[ Index(((int)((P2 *)this)->port), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]) == 0) continue;

		XX=1;
		if (3 != qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], 0, 0, 0)) continue;
		if (((int)((P2 *)this)->objKey) != qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->opaqueData);
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->opaqueData2);
		(trpt+1)->bup.ovals[2] = ((int)now.gTag);
		;
		((P2 *)this)->opaqueData = qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Server:opaqueData", ((int)((P2 *)this)->opaqueData));
#endif
		;
		((P2 *)this)->opaqueData2 = qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Server:opaqueData2", ((int)((P2 *)this)->opaqueData2));
#endif
		;
		now.gTag = qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("gTag", ((int)now.gTag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.toServer[ Index(((int)((P2 *)this)->port), 3) ]);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->opaqueData)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->opaqueData2)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.gTag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 84: // STATE 3 - giop3.v10.nomig.pr:448 - [toAgentU[port]!SReply,objKey,opaqueData,opaqueData2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->opaqueData)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->opaqueData2)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ], 0, 2, ((int)((P2 *)this)->objKey), ((int)((P2 *)this)->opaqueData), ((int)((P2 *)this)->opaqueData2), 0, 0, 0, 0, 4);
		if (q_zero(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ])) { boq = now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 85: // STATE 7 - giop3.v10.nomig.pr:452 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPClient */
	case 86: // STATE 1 - giop3.v10.nomig.pr:234 - [uin?URequest,tag,objref.objKey,objref.port] (0:0:3 - 0)
		reached[1][1] = 1;
		if (q_zero(((P1 *)this)->uin))
		{	if (boq != ((P1 *)this)->uin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P1 *)this)->uin) == 0) continue;

		XX=1;
		if (6 != qrecv(((P1 *)this)->uin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->tag);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->objref.objKey);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->objref.port);
		;
		((P1 *)this)->tag = qrecv(((P1 *)this)->uin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:tag", ((int)((P1 *)this)->tag));
#endif
		;
		((P1 *)this)->objref.objKey = qrecv(((P1 *)this)->uin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:objref.objKey", ((int)((P1 *)this)->objref.objKey));
#endif
		;
		((P1 *)this)->objref.port = qrecv(((P1 *)this)->uin, XX-1, 3, 1);
#ifdef VAR_RANGES
		logval("GIOPClient:objref.port", ((int)((P1 *)this)->objref.port));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)this)->uin);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->tag)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->objref.objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->objref.port)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P1 *)this)->uin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 87: // STATE 4 - giop3.v10.nomig.pr:240 - [D_STEP240]
		IfNotBlocked

		reached[1][4] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_039_0: /* 2 */
		((P1 *)this)->svrPort = ((int)((P1 *)this)->objref.port);
#ifdef VAR_RANGES
		logval("GIOPClient:svrPort", ((int)((P1 *)this)->svrPort));
#endif
		;
S_040_0: /* 2 */
		((P1 *)this)->reqId = 0;
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		goto S_048_0;
S_048_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 88: // STATE 5 - giop3.v10.nomig.pr:247 - [((usedReqId[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 6 - giop3.v10.nomig.pr:248 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 7 - giop3.v10.nomig.pr:249 - [assert((reqId<4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		spin_assert((((int)((P1 *)this)->reqId)<4), "(reqId<4)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 8 - giop3.v10.nomig.pr:251 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 13 - giop3.v10.nomig.pr:256 - [usedReqId[reqId] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 21 - giop3.v10.nomig.pr:257 - [D_STEP257]
		IfNotBlocked

		reached[1][21] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_051_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = ((int)((P1 *)this)->tag);
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_052_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = ((int)((P1 *)this)->objref.objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
S_053_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = ((int)((P1 *)this)->objref.port);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_054_0: /* 2 */
		((P1 *)this)->msg.mhdr.request_id = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
S_055_0: /* 2 */
		((P1 *)this)->msg.mhdr.object_key = ((int)((P1 *)this)->objref.objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
S_056_0: /* 2 */
		((P1 *)this)->msg.mhdr.tag = ((int)((P1 *)this)->tag);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
S_057_0: /* 2 */
		request_reqId = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("request_reqId", ((int)request_reqId));
#endif
		;
		goto S_059_0;
S_059_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 94: // STATE 22 - giop3.v10.nomig.pr:271 - [lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][22] = 1;
		if (q_full(((P1 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->lout);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->svrPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->lout, 0, 10, ((int)((P1 *)this)->svrPort), ((int)((P1 *)this)->msg.mhdr.request_id), ((int)((P1 *)this)->msg.mhdr.object_key), ((int)((P1 *)this)->msg.mhdr.reply_status), ((int)((P1 *)this)->msg.mhdr.forward_port), ((int)((P1 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P1 *)this)->lout)) { boq = ((P1 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 95: // STATE 25 - giop3.v10.nomig.pr:283 - [lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][25] = 1;
		if (q_full(((P1 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->lout);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->svrPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->lout, 0, 8, ((int)((P1 *)this)->svrPort), ((int)((P1 *)this)->msg.mhdr.request_id), ((int)((P1 *)this)->msg.mhdr.object_key), ((int)((P1 *)this)->msg.mhdr.reply_status), ((int)((P1 *)this)->msg.mhdr.forward_port), ((int)((P1 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P1 *)this)->lout)) { boq = ((P1 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 96: // STATE 26 - giop3.v10.nomig.pr:285 - [usedReqId[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 27 - giop3.v10.nomig.pr:288 - [uout!UReply,tag,3] (0:0:0 - 0)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(((P1 *)this)->uout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->uout);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->tag)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->uout, 0, 5, ((int)((P1 *)this)->tag), 3, 0, 0, 0, 0, 0, 3);
		if (q_zero(((P1 *)this)->uout)) { boq = ((P1 *)this)->uout; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 30 - giop3.v10.nomig.pr:291 - [lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[1][30] = 1;
		if (q_zero(((P1 *)this)->lin))
		{	if (boq != ((P1 *)this)->lin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P1 *)this)->lin) == 0) continue;

		XX=1;
		if (9 != qrecv(((P1 *)this)->lin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->svrPort);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[5] = ((int)((P1 *)this)->msg.mhdr.tag);
		;
		((P1 *)this)->svrPort = qrecv(((P1 *)this)->lin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:svrPort", ((int)((P1 *)this)->svrPort));
#endif
		;
		((P1 *)this)->msg.mhdr.request_id = qrecv(((P1 *)this)->lin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
		((P1 *)this)->msg.mhdr.object_key = qrecv(((P1 *)this)->lin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
		((P1 *)this)->msg.mhdr.reply_status = qrecv(((P1 *)this)->lin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.reply_status", ((int)((P1 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P1 *)this)->msg.mhdr.forward_port = qrecv(((P1 *)this)->lin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.forward_port", ((int)((P1 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P1 *)this)->msg.mhdr.tag = qrecv(((P1 *)this)->lin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)this)->lin);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->svrPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P1 *)this)->lin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 2: svrPort */  (trpt+1)->bup.ovals[6] = ((P1 *)this)->svrPort;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->svrPort = 0;
		_m = 4; goto P999; /* 0 */
	case 99: // STATE 34 - giop3.v10.nomig.pr:296 - [D_STEP296]
		IfNotBlocked

		reached[1][34] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_068_0: /* 2 */
		((P1 *)this)->reqId = ((int)((P1 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
S_069_0: /* 2 */
		spin_assert((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0), "(usedReqId[reqId]!=0)", II, tt, t);
S_070_0: /* 2 */
		reply_reqId = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("reply_reqId", ((int)reply_reqId));
#endif
		;
		goto S_092_0;
S_092_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 100: // STATE 35 - giop3.v10.nomig.pr:304 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 36 - giop3.v10.nomig.pr:308 - [((msg.mhdr.reply_status==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((int)((P1 *)this)->msg.mhdr.reply_status)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 38 - giop3.v10.nomig.pr:313 - [D_STEP313]
		IfNotBlocked

		reached[1][38] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_074_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = ((int)((P1 *)this)->msg.mhdr.forward_port);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
		goto S_076_0;
S_076_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 103: // STATE 39 - giop3.v10.nomig.pr:317 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][39] = 1;
		if (q_full(((P1 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->lout);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->lout, 0, 10, ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port), ((int)((P1 *)this)->msg.mhdr.request_id), ((int)((P1 *)this)->msg.mhdr.object_key), ((int)((P1 *)this)->msg.mhdr.reply_status), ((int)((P1 *)this)->msg.mhdr.forward_port), ((int)((P1 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P1 *)this)->lout)) { boq = ((P1 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 41 - giop3.v10.nomig.pr:322 - [uout!UReply,tags[reqId],msg.mhdr.reply_status] (0:0:0 - 0)
		IfNotBlocked
		reached[1][41] = 1;
		if (q_full(((P1 *)this)->uout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->uout);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ])); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->uout, 0, 5, ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]), ((int)((P1 *)this)->msg.mhdr.reply_status), 0, 0, 0, 0, 0, 3);
		if (q_zero(((P1 *)this)->uout)) { boq = ((P1 *)this)->uout; };
		_m = 2; goto P999; /* 0 */
	case 105: // STATE 46 - giop3.v10.nomig.pr:325 - [D_STEP325]
		IfNotBlocked

		reached[1][46] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_079_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_080_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_081_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_082_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_085_0;
S_085_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 106: // STATE 49 - giop3.v10.nomig.pr:335 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 54 - giop3.v10.nomig.pr:337 - [D_STEP337]
		IfNotBlocked

		reached[1][54] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_087_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_088_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_089_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_090_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_093_0;
S_093_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 108: // STATE 57 - giop3.v10.nomig.pr:346 - [lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
		reached[1][57] = 1;
		if (q_zero(((P1 *)this)->lin))
		{	if (boq != ((P1 *)this)->lin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P1 *)this)->lin) == 0) continue;

		XX=1;
		if (7 != qrecv(((P1 *)this)->lin, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->svrPort);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->msg.mhdr.request_id);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->msg.mhdr.object_key);
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)this)->msg.mhdr.reply_status);
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)this)->msg.mhdr.forward_port);
		(trpt+1)->bup.ovals[5] = ((int)((P1 *)this)->msg.mhdr.tag);
		;
		((P1 *)this)->svrPort = qrecv(((P1 *)this)->lin, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:svrPort", ((int)((P1 *)this)->svrPort));
#endif
		;
		((P1 *)this)->msg.mhdr.request_id = qrecv(((P1 *)this)->lin, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
		((P1 *)this)->msg.mhdr.object_key = qrecv(((P1 *)this)->lin, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
		((P1 *)this)->msg.mhdr.reply_status = qrecv(((P1 *)this)->lin, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.reply_status", ((int)((P1 *)this)->msg.mhdr.reply_status));
#endif
		;
		((P1 *)this)->msg.mhdr.forward_port = qrecv(((P1 *)this)->lin, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.forward_port", ((int)((P1 *)this)->msg.mhdr.forward_port));
#endif
		;
		((P1 *)this)->msg.mhdr.tag = qrecv(((P1 *)this)->lin, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)this)->lin);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->svrPort)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P1 *)this)->lin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 109: // STATE 58 - giop3.v10.nomig.pr:355 - [reqId = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = 0;
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 59 - giop3.v10.nomig.pr:357 - [((reqId==4))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)((P1 *)this)->reqId)==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P1 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 61 - giop3.v10.nomig.pr:360 - [((reqId!=4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][61] = 1;
		if (!((((int)((P1 *)this)->reqId)!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 62 - giop3.v10.nomig.pr:362 - [((objRefs[reqId].port==svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)==((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 63 - giop3.v10.nomig.pr:365 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 67 - giop3.v10.nomig.pr:372 - [D_STEP372]
		IfNotBlocked

		reached[1][67] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_101_0: /* 2 */
		((P1 *)this)->msg.mhdr.request_id = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
S_102_0: /* 2 */
		((P1 *)this)->msg.mhdr.object_key = ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
S_103_0: /* 2 */
		((P1 *)this)->msg.mhdr.tag = ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		goto S_105_0;
S_105_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 115: // STATE 68 - giop3.v10.nomig.pr:377 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][68] = 1;
		if (q_full(((P1 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->lout);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.request_id)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.object_key)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.reply_status)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.forward_port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->msg.mhdr.tag)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->lout, 0, 10, ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port), ((int)((P1 *)this)->msg.mhdr.request_id), ((int)((P1 *)this)->msg.mhdr.object_key), ((int)((P1 *)this)->msg.mhdr.reply_status), ((int)((P1 *)this)->msg.mhdr.forward_port), ((int)((P1 *)this)->msg.mhdr.tag), 0, 7);
		if (q_zero(((P1 *)this)->lout)) { boq = ((P1 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 116: // STATE 69 - giop3.v10.nomig.pr:380 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 74 - giop3.v10.nomig.pr:384 - [D_STEP384]
		IfNotBlocked

		reached[1][74] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_107_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_108_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_109_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_110_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_114_0;
S_114_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 118: // STATE 75 - giop3.v10.nomig.pr:391 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 78 - giop3.v10.nomig.pr:396 - [((objRefs[reqId].port!=svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)!=((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 81 - giop3.v10.nomig.pr:399 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 88 - giop3.v10.nomig.pr:404 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][88] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 122: // STATE 1 - giop3.v10.nomig.pr:149 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 2 - giop3.v10.nomig.pr:151 - [((i<2))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->i)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 3 - giop3.v10.nomig.pr:152 - [((gPublished[i]!=255))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ])!=255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 4 - giop3.v10.nomig.pr:153 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 5 - giop3.v10.nomig.pr:154 - [((i==2))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->i)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 10 - giop3.v10.nomig.pr:157 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 12 - giop3.v10.nomig.pr:165 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 13 - giop3.v10.nomig.pr:167 - [((i<=(2-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)((P0 *)this)->i)<=(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 14 - giop3.v10.nomig.pr:168 - [objref.objKey = i] (0:0:1 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->objref.objKey);
		((P0 *)this)->objref.objKey = ((int)((P0 *)this)->i);
#ifdef VAR_RANGES
		logval("User:objref.objKey", ((int)((P0 *)this)->objref.objKey));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 15 - giop3.v10.nomig.pr:169 - [objref.port = gPublished[i]] (0:0:1 - 0)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->objref.port);
		((P0 *)this)->objref.port = ((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ]);
#ifdef VAR_RANGES
		logval("User:objref.port", ((int)((P0 *)this)->objref.port));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 17 - giop3.v10.nomig.pr:171 - [((i<(2-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)((P0 *)this)->i)<(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 18 - giop3.v10.nomig.pr:172 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 22 - giop3.v10.nomig.pr:174 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 24 - giop3.v10.nomig.pr:178 - [((turn==_pid))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((int)now.turn)==((int)((P0 *)this)->_pid))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 25 - giop3.v10.nomig.pr:181 - [lout!URequest,tag,objref.objKey,objref.port] (0:0:0 - 0)
		IfNotBlocked
		reached[0][25] = 1;
		if (q_full(((P0 *)this)->lout))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->lout);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->tag)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->objref.objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->objref.port)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->lout, 0, 6, ((int)((P0 *)this)->tag), ((int)((P0 *)this)->objref.objKey), ((int)((P0 *)this)->objref.port), 0, 0, 0, 0, 4);
		if (q_zero(((P0 *)this)->lout)) { boq = ((P0 *)this)->lout; };
		_m = 2; goto P999; /* 0 */
	case 137: // STATE 26 - giop3.v10.nomig.pr:184 - [turn = Pid[7]] (0:0:1 - 0)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = ((int)now.Pid[7]);
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 27 - giop3.v10.nomig.pr:190 - [lin?UReply,eval(tag),status] (0:0:2 - 0)
		reached[0][27] = 1;
		if (q_zero(((P0 *)this)->lin))
		{	if (boq != ((P0 *)this)->lin) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P0 *)this)->lin) == 0) continue;

		XX=1;
		if (5 != qrecv(((P0 *)this)->lin, 0, 0, 0)) continue;
		if (((int)((P0 *)this)->tag) != qrecv(((P0 *)this)->lin, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->status);
		;
		((P0 *)this)->status = qrecv(((P0 *)this)->lin, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("User:status", ((int)((P0 *)this)->status));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->lin);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->tag)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->status)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P0 *)this)->lin))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: tag */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->tag = 0;
		_m = 4; goto P999; /* 0 */
	case 139: // STATE 28 - giop3.v10.nomig.pr:196 - [((status==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((int)((P0 *)this)->status)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 29 - giop3.v10.nomig.pr:198 - [printf('Request satisfied\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("Request satisfied\n");
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 30 - giop3.v10.nomig.pr:200 - [((status==2))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((int)((P0 *)this)->status)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 31 - giop3.v10.nomig.pr:202 - [printf('Request failed: user exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("Request failed: user exception\n");
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 32 - giop3.v10.nomig.pr:204 - [((status==3))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)((P0 *)this)->status)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 33 - giop3.v10.nomig.pr:206 - [printf('Request failed: system exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][33] = 1;
		Printf("Request failed: system exception\n");
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 34 - giop3.v10.nomig.pr:208 - [((status==5))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((((int)((P0 *)this)->status)==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 35 - giop3.v10.nomig.pr:209 - [printf('Request failed: object does not exist\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][35] = 1;
		Printf("Request failed: object does not exist\n");
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 38 - giop3.v10.nomig.pr:211 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

