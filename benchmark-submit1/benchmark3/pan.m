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
	case 3: // STATE 1 - ./v3.never:14 - [((User[7]._p==URequestSent))] (0:0:0 - 0)
		
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
		if (!((((int)((P0 *)Pptr(BASE+7))->_p)==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - ./v3.never:19 - [(!((User[7]._p==UReplyReceived)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+7))->_p)==34))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - ./v3.never:21 - [-end-] (0:0:0 - 0)
		
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
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - giop3.nomig.pr:728 - [Pid[0] = run transport(0,toTransportU[0],toClientL)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = ((int)Pid[0]);
		Pid[0] = addproc(II, 1, 4, 0, now.toTransportU[0], now.toClientL, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[0]", ((int)Pid[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - giop3.nomig.pr:729 - [Pid[1] = run transport(1,toTransportU[1],toAgentL[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = ((int)Pid[1]);
		Pid[1] = addproc(II, 1, 4, 1, now.toTransportU[1], now.toAgentL[1], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[1]", ((int)Pid[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - giop3.nomig.pr:730 - [Pid[2] = run transport(2,toTransportU[2],toAgentL[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][3] = 1;
		(trpt+1)->bup.oval = ((int)Pid[2]);
		Pid[2] = addproc(II, 1, 4, 2, now.toTransportU[2], now.toAgentL[2], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[2]", ((int)Pid[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - giop3.nomig.pr:732 - [Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][4] = 1;
		(trpt+1)->bup.oval = ((int)Pid[3]);
		Pid[3] = addproc(II, 1, 1, now.toClientU, now.toUser, now.toClientL, now.toTransportU[0], 0);
#ifdef VAR_RANGES
		logval("Pid[3]", ((int)Pid[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - giop3.nomig.pr:734 - [Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = ((int)Pid[4]);
		Pid[4] = addproc(II, 1, 3, 1, now.toAgentU[1], now.toServer[1], now.toAgentL[1], now.toTransportU[1]);
#ifdef VAR_RANGES
		logval("Pid[4]", ((int)Pid[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - giop3.nomig.pr:735 - [Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][6] = 1;
		(trpt+1)->bup.oval = ((int)Pid[5]);
		Pid[5] = addproc(II, 1, 3, 2, now.toAgentU[2], now.toServer[2], now.toAgentL[2], now.toTransportU[2]);
#ifdef VAR_RANGES
		logval("Pid[5]", ((int)Pid[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - giop3.nomig.pr:737 - [Pid[6] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][7] = 1;
		(trpt+1)->bup.oval = ((int)Pid[6]);
		Pid[6] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[6]", ((int)Pid[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - giop3.nomig.pr:738 - [Pid[7] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][8] = 1;
		(trpt+1)->bup.oval = ((int)Pid[7]);
		Pid[7] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[7]", ((int)Pid[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - giop3.nomig.pr:740 - [Pid[8] = run Server(1,0)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][9] = 1;
		(trpt+1)->bup.oval = ((int)Pid[8]);
		Pid[8] = addproc(II, 1, 2, 1, 0, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[8]", ((int)Pid[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 10 - giop3.nomig.pr:741 - [Pid[9] = run Server(2,1)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][10] = 1;
		(trpt+1)->bup.oval = ((int)Pid[9]);
		Pid[9] = addproc(II, 1, 2, 2, 1, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[9]", ((int)Pid[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 12 - giop3.nomig.pr:744 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[5][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC transport */
	case 17: // STATE 1 - giop3.nomig.pr:653 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 18: // STATE 2 - giop3.nomig.pr:661 - [toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 19: // STATE 3 - giop3.nomig.pr:664 - [((msgType==CloseConnection))] (0:0:1 - 0)
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
	case 20: // STATE 4 - giop3.nomig.pr:665 - [connId[dstport] = ((connId[dstport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->dstport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:dstport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 5 - giop3.nomig.pr:666 - [((msgType!=CloseConnection))] (0:0:1 - 0)
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
	case 22: // STATE 9 - giop3.nomig.pr:673 - [(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])] (0:0:0 - 0)
		IfNotBlocked
		reached[4][9] = 1;
		if (!(not_RV(((P4 *)this)->savedmsg) && \
		(q_len(((P4 *)this)->savedmsg) > 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 10 - giop3.nomig.pr:674 - [savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
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
	case 24: // STATE 16 - giop3.nomig.pr:680 - [toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
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
	case 25: // STATE 17 - giop3.nomig.pr:691 - [((rcvConnId==connId[srcport]))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][17] = 1;
		if (!((((int)((P4 *)this)->rcvConnId)==((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 18 - giop3.nomig.pr:693 - [uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 27: // STATE 19 - giop3.nomig.pr:694 - [(timeout)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][19] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 28: // STATE 20 - giop3.nomig.pr:702 - [savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 29: // STATE 21 - giop3.nomig.pr:703 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 30: // STATE 25 - giop3.nomig.pr:707 - [((rcvConnId!=connId[srcport]))] (0:0:1 - 0)
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
	case 31: // STATE 26 - giop3.nomig.pr:708 - [printf('Old message encountered -> discarded\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[4][26] = 1;
		Printf("Old message encountered -> discarded\n");
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 29 - giop3.nomig.pr:713 - [((msgType==CloseConnection))] (0:0:1 - 0)
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
	case 33: // STATE 30 - giop3.nomig.pr:714 - [connId[srcport] = ((connId[srcport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->srcport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:srcport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 31 - giop3.nomig.pr:715 - [((msgType!=CloseConnection))] (0:0:1 - 0)
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
	case 35: // STATE 37 - giop3.nomig.pr:720 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[4][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPAgent */
	case 36: // STATE 1 - giop3.nomig.pr:452 - [uin?SRegister,objKey,_,_] (0:0:3 - 0)
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
	case 37: // STATE 4 - giop3.nomig.pr:454 - [D_STEP454]
		IfNotBlocked

		reached[3][4] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_130_0: /* 2 */
		now.gPublished[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("gPublished[GIOPAgent:objKey]", ((int)now.gPublished[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
S_131_0: /* 2 */
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		goto S_201_0;
S_201_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 38: // STATE 5 - giop3.nomig.pr:464 - [uin?SMigrateReq,objKey,clPort,_] (0:0:3 - 0)
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
	case 39: // STATE 6 - giop3.nomig.pr:469 - [registered[objKey] = clPort] (0:0:1 - 0)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->clPort);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 7 - giop3.nomig.pr:473 - [lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
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
	case 41: // STATE 10 - giop3.nomig.pr:478 - [D_STEP478]
		IfNotBlocked

		reached[3][10] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_136_0: /* 2 */
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
S_137_0: /* 2 */
		((P3 *)this)->objKey = ((int)((P3 *)this)->msg.mhdr.object_key);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
		goto S_162_0;
S_162_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 42: // STATE 11 - giop3.nomig.pr:486 - [((registered[objKey]==port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 13 - giop3.nomig.pr:491 - [D_STEP491]
		IfNotBlocked

		reached[3][13] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_140_0: /* 2 */
		((P3 *)this)->connState = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
		goto S_142_0;
S_142_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 44: // STATE 14 - giop3.nomig.pr:497 - [uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][14] = 1;
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
	case 45: // STATE 17 - giop3.nomig.pr:500 - [D_STEP500]
		IfNotBlocked

		reached[3][17] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_143_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_144_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)+1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
		goto S_163_0;
S_163_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 46: // STATE 18 - giop3.nomig.pr:508 - [((registered[objKey]!=port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])!=((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 19 - giop3.nomig.pr:511 - [((registered[objKey]==255))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][19] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 23 - giop3.nomig.pr:513 - [D_STEP513]
		IfNotBlocked

		reached[3][23] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_148_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_149_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_150_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 5;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_159_0;
S_159_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 49: // STATE 29 - giop3.nomig.pr:522 - [D_STEP522]
		IfNotBlocked

		reached[3][29] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_153_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_154_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_155_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 4;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
S_156_0: /* 2 */
		((P3 *)this)->msg.mhdr.forward_port = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.forward_port", ((int)((P3 *)this)->msg.mhdr.forward_port));
#endif
		;
		goto S_159_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 50: // STATE 32 - giop3.nomig.pr:531 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][32] = 1;
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
	case 51: // STATE 36 - giop3.nomig.pr:537 - [uin?SReply,objKey,reqId,clPort] (0:0:3 - 0)
		reached[3][36] = 1;
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
	case 52: // STATE 37 - giop3.nomig.pr:543 - [assert((requested[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][37] = 1;
		spin_assert((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])!=0), "(requested[reqId]!=0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 38 - giop3.nomig.pr:549 - [((requested[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][38] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 41 - giop3.nomig.pr:552 - [D_STEP552]
		IfNotBlocked

		reached[3][41] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_167_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_168_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
		goto S_180_0;
S_180_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 55: // STATE 42 - giop3.nomig.pr:559 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][42] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 46 - giop3.nomig.pr:560 - [D_STEP560]
		IfNotBlocked

		reached[3][46] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_171_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_172_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_173_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_175_0;
S_175_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 57: // STATE 47 - giop3.nomig.pr:566 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][47] = 1;
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
	case 58: // STATE 50 - giop3.nomig.pr:568 - [D_STEP568]
		IfNotBlocked

		reached[3][50] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_176_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_177_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
		goto S_180_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 59: // STATE 53 - giop3.nomig.pr:581 - [((numOutstandingReqs==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][53] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 54 - giop3.nomig.pr:583 - [((connState==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][54] = 1;
		if (!((((int)((P3 *)this)->connState)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: connState */  (trpt+1)->bup.oval = ((P3 *)this)->connState;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->connState = 0;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 55 - giop3.nomig.pr:586 - [lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[3][55] = 1;
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
	case 62: // STATE 57 - giop3.nomig.pr:588 - [D_STEP588]
		IfNotBlocked

		reached[3][57] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_184_0: /* 2 */
		((P3 *)this)->connState = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
		goto S_188_0;
S_188_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 63: // STATE 58 - giop3.nomig.pr:594 - [((connState!=1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][58] = 1;
		if (!((((int)((P3 *)this)->connState)!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 61 - giop3.nomig.pr:598 - [((numOutstandingReqs!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][61] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 64 - giop3.nomig.pr:603 - [lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[3][64] = 1;
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
	case 66: // STATE 65 - giop3.nomig.pr:604 - [reqId = msg.mhdr.request_id] (0:0:1 - 0)
		IfNotBlocked
		reached[3][65] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->reqId);
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 66 - giop3.nomig.pr:606 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][66] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 67 - giop3.nomig.pr:609 - [requested[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[3][67] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]);
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 68 - giop3.nomig.pr:611 - [((requested[reqId]==0))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][68] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P3 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 69 - giop3.nomig.pr:614 - [((requested[reqId]==2))] (0:0:1 - 0)
		IfNotBlocked
		reached[3][69] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P3 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 75 - giop3.nomig.pr:620 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][75] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Server */
	case 72: // STATE 1 - giop3.nomig.pr:423 - [toAgentU[port]!SRegister,objKey,port,0] (0:0:0 - 0)
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
	case 73: // STATE 2 - giop3.nomig.pr:428 - [toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,tag] (0:0:4 - 0)
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
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)this)->opaqueData);
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->opaqueData2);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->tag);
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
		((P2 *)this)->tag = qrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 4, 1);
#ifdef VAR_RANGES
		logval("Server:tag", ((int)((P2 *)this)->tag));
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
		sprintf(simtmp, "%d", ((int)((P2 *)this)->tag)); strcat(simvals, simtmp);		}
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
		if (TstOnly) return 1; /* TT */
		/* dead 2: tag */  (trpt+1)->bup.ovals[3] = ((P2 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->tag = 0;
		_m = 4; goto P999; /* 0 */
	case 74: // STATE 3 - giop3.nomig.pr:431 - [toAgentU[port]!SReply,objKey,opaqueData,opaqueData2] (0:0:0 - 0)
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
	case 75: // STATE 7 - giop3.nomig.pr:435 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPClient */
	case 76: // STATE 1 - giop3.nomig.pr:229 - [uin?URequest,tag,objref.objKey,objref.port] (0:0:3 - 0)
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
	case 77: // STATE 4 - giop3.nomig.pr:235 - [D_STEP235]
		IfNotBlocked

		reached[1][4] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_037_0: /* 2 */
		((P1 *)this)->svrPort = ((int)((P1 *)this)->objref.port);
#ifdef VAR_RANGES
		logval("GIOPClient:svrPort", ((int)((P1 *)this)->svrPort));
#endif
		;
S_038_0: /* 2 */
		((P1 *)this)->reqId = 0;
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		goto S_046_0;
S_046_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 78: // STATE 5 - giop3.nomig.pr:242 - [((usedReqId[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 6 - giop3.nomig.pr:243 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 7 - giop3.nomig.pr:244 - [assert((reqId<4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		spin_assert((((int)((P1 *)this)->reqId)<4), "(reqId<4)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 8 - giop3.nomig.pr:246 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 13 - giop3.nomig.pr:251 - [usedReqId[reqId] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 20 - giop3.nomig.pr:252 - [D_STEP252]
		IfNotBlocked

		reached[1][20] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_049_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = ((int)((P1 *)this)->tag);
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_050_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = ((int)((P1 *)this)->objref.objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
S_051_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = ((int)((P1 *)this)->objref.port);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_052_0: /* 2 */
		((P1 *)this)->msg.mhdr.request_id = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
S_053_0: /* 2 */
		((P1 *)this)->msg.mhdr.object_key = ((int)((P1 *)this)->objref.objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
S_054_0: /* 2 */
		((P1 *)this)->msg.mhdr.tag = ((int)((P1 *)this)->tag);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		goto S_056_0;
S_056_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 84: // STATE 21 - giop3.nomig.pr:266 - [lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][21] = 1;
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
	case 85: // STATE 24 - giop3.nomig.pr:278 - [lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][24] = 1;
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
	case 86: // STATE 25 - giop3.nomig.pr:280 - [usedReqId[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 26 - giop3.nomig.pr:283 - [uout!UReply,tag,3] (0:0:0 - 0)
		IfNotBlocked
		reached[1][26] = 1;
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
	case 88: // STATE 29 - giop3.nomig.pr:286 - [lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
		reached[1][29] = 1;
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
	case 89: // STATE 32 - giop3.nomig.pr:291 - [D_STEP291]
		IfNotBlocked

		reached[1][32] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_065_0: /* 2 */
		((P1 *)this)->reqId = ((int)((P1 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
S_066_0: /* 2 */
		spin_assert((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0), "(usedReqId[reqId]!=0)", II, tt, t);
		goto S_088_0;
S_088_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 90: // STATE 33 - giop3.nomig.pr:299 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 34 - giop3.nomig.pr:303 - [((msg.mhdr.reply_status==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((int)((P1 *)this)->msg.mhdr.reply_status)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 36 - giop3.nomig.pr:308 - [D_STEP308]
		IfNotBlocked

		reached[1][36] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_070_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = ((int)((P1 *)this)->msg.mhdr.forward_port);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
		goto S_072_0;
S_072_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 93: // STATE 37 - giop3.nomig.pr:312 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][37] = 1;
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
	case 94: // STATE 39 - giop3.nomig.pr:317 - [uout!UReply,tags[reqId],msg.mhdr.reply_status] (0:0:0 - 0)
		IfNotBlocked
		reached[1][39] = 1;
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
	case 95: // STATE 44 - giop3.nomig.pr:320 - [D_STEP320]
		IfNotBlocked

		reached[1][44] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_075_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_076_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_077_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_078_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_081_0;
S_081_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 96: // STATE 47 - giop3.nomig.pr:330 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][47] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 52 - giop3.nomig.pr:332 - [D_STEP332]
		IfNotBlocked

		reached[1][52] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_083_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_084_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_085_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_086_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_089_0;
S_089_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 98: // STATE 55 - giop3.nomig.pr:341 - [lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
		reached[1][55] = 1;
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
	case 99: // STATE 56 - giop3.nomig.pr:350 - [reqId = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = 0;
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 57 - giop3.nomig.pr:352 - [((reqId==4))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][57] = 1;
		if (!((((int)((P1 *)this)->reqId)==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: reqId */  (trpt+1)->bup.oval = ((P1 *)this)->reqId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->reqId = 0;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 59 - giop3.nomig.pr:355 - [((reqId!=4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)((P1 *)this)->reqId)!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 60 - giop3.nomig.pr:357 - [((objRefs[reqId].port==svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][60] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)==((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 61 - giop3.nomig.pr:360 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][61] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 65 - giop3.nomig.pr:367 - [D_STEP367]
		IfNotBlocked

		reached[1][65] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_097_0: /* 2 */
		((P1 *)this)->msg.mhdr.request_id = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
S_098_0: /* 2 */
		((P1 *)this)->msg.mhdr.object_key = ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
S_099_0: /* 2 */
		((P1 *)this)->msg.mhdr.tag = ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		goto S_101_0;
S_101_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 105: // STATE 66 - giop3.nomig.pr:372 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
		IfNotBlocked
		reached[1][66] = 1;
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
	case 106: // STATE 67 - giop3.nomig.pr:375 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 72 - giop3.nomig.pr:379 - [D_STEP379]
		IfNotBlocked

		reached[1][72] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_103_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_104_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_105_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_106_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_110_0;
S_110_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 108: // STATE 73 - giop3.nomig.pr:386 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][73] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 76 - giop3.nomig.pr:391 - [((objRefs[reqId].port!=svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)!=((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 79 - giop3.nomig.pr:394 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 86 - giop3.nomig.pr:399 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][86] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 112: // STATE 1 - giop3.nomig.pr:149 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 2 - giop3.nomig.pr:151 - [((i<2))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->i)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 3 - giop3.nomig.pr:152 - [((gPublished[i]!=255))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ])!=255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 4 - giop3.nomig.pr:153 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 5 - giop3.nomig.pr:154 - [((i==2))] (0:0:1 - 0)
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
	case 117: // STATE 10 - giop3.nomig.pr:157 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 23 - giop3.nomig.pr:164 - [D_STEP164]
		IfNotBlocked

		reached[0][23] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_011_0: /* 2 */
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
S_019_0: /* 2 */
S_018_0: /* 2 */
S_012_0: /* 2 */
		if (!((((int)((P0 *)this)->i)<=(2-1))))
			goto S_018_1;
S_013_0: /* 2 */
		((P0 *)this)->objref.objKey = ((int)((P0 *)this)->i);
#ifdef VAR_RANGES
		logval("User:objref.objKey", ((int)((P0 *)this)->objref.objKey));
#endif
		;
S_014_0: /* 2 */
		((P0 *)this)->objref.port = ((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ]);
#ifdef VAR_RANGES
		logval("User:objref.port", ((int)((P0 *)this)->objref.port));
#endif
		;
S_015_0: /* 2 */
		goto S_020_0;	/* 'goto' */
S_018_1: /* 3 */
S_016_0: /* 2 */
		if (!((((int)((P0 *)this)->i)<(2-1))))
			goto S_018_2;
S_017_0: /* 2 */
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		goto S_019_0; /* ';' */
S_018_2: /* 3 */
		Uerror("blocking sel in d_step (nr.0, near line 166)");
S_020_0: /* 2 */
		goto S_021_0;	/* 'break' */
S_021_0: /* 2 */
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 119: // STATE 24 - giop3.nomig.pr:178 - [lout!URequest,tag,objref.objKey,objref.port] (0:0:0 - 0)
		IfNotBlocked
		reached[0][24] = 1;
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
	case 120: // STATE 25 - giop3.nomig.pr:185 - [lin?UReply,eval(tag),status] (0:0:2 - 0)
		reached[0][25] = 1;
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
	case 121: // STATE 26 - giop3.nomig.pr:191 - [((status==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((int)((P0 *)this)->status)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 27 - giop3.nomig.pr:193 - [printf('Request satisfied\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][27] = 1;
		Printf("Request satisfied\n");
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 28 - giop3.nomig.pr:195 - [((status==2))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((int)((P0 *)this)->status)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 29 - giop3.nomig.pr:197 - [printf('Request failed: user exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("Request failed: user exception\n");
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 30 - giop3.nomig.pr:199 - [((status==3))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((int)((P0 *)this)->status)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 31 - giop3.nomig.pr:201 - [printf('Request failed: system exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("Request failed: system exception\n");
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 32 - giop3.nomig.pr:203 - [((status==5))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)((P0 *)this)->status)==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: status */  (trpt+1)->bup.oval = ((P0 *)this)->status;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->status = 0;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 33 - giop3.nomig.pr:204 - [printf('Request failed: object does not exist\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][33] = 1;
		Printf("Request failed: object does not exist\n");
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 36 - giop3.nomig.pr:206 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][36] = 1;
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

