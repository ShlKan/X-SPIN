	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 12: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 13: // STATE 1
		;
		now.Pid[0] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 2
		;
		now.Pid[1] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 3
		;
		now.Pid[2] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 16: // STATE 4
		;
		now.Pid[3] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: // STATE 5
		;
		now.Pid[4] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 18: // STATE 6
		;
		now.Pid[5] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 19: // STATE 7
		;
		now.Pid[6] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: // STATE 8
		;
		now.Pid[7] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 9
		;
		now.Pid[8] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 10
		;
		now.Pid[9] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 23: // STATE 11
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC transport */

	case 25: // STATE 1
		;
		XX = 1;
		unrecv(((P4 *)this)->uin, XX-1, 0, ((P4 *)this)->msgType, 1);
		unrecv(((P4 *)this)->uin, XX-1, 1, ((int)((P4 *)this)->dstport), 0);
		unrecv(((P4 *)this)->uin, XX-1, 2, ((int)((P4 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P4 *)this)->uin, XX-1, 3, ((int)((P4 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P4 *)this)->uin, XX-1, 4, ((int)((P4 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P4 *)this)->uin, XX-1, 5, ((int)((P4 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P4 *)this)->uin, XX-1, 6, ((int)((P4 *)this)->msg.mhdr.tag), 0);
		((P4 *)this)->msgType = trpt->bup.ovals[0];
		((P4 *)this)->dstport = trpt->bup.ovals[1];
		((P4 *)this)->msg.mhdr.request_id = trpt->bup.ovals[2];
		((P4 *)this)->msg.mhdr.object_key = trpt->bup.ovals[3];
		((P4 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[4];
		((P4 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[5];
		((P4 *)this)->msg.mhdr.tag = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 26: // STATE 2
		;
		_m = unsend(now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ]);
		;
		goto R999;

	case 27: // STATE 3
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 28: // STATE 4
		;
		((P4 *)this)->connId[ Index(((P4 *)this)->dstport, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 5
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 31: // STATE 10
		;
		XX = 1;
		unrecv(((P4 *)this)->savedmsg, XX-1, 0, ((P4 *)this)->msgType, 1);
		unrecv(((P4 *)this)->savedmsg, XX-1, 1, ((int)((P4 *)this)->rcvConnId), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 2, ((int)((P4 *)this)->srcport), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 3, ((int)((P4 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 4, ((int)((P4 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 5, ((int)((P4 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 6, ((int)((P4 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P4 *)this)->savedmsg, XX-1, 7, ((int)((P4 *)this)->msg.mhdr.tag), 0);
		((P4 *)this)->msgType = trpt->bup.ovals[0];
		((P4 *)this)->rcvConnId = trpt->bup.ovals[1];
		((P4 *)this)->srcport = trpt->bup.ovals[2];
		((P4 *)this)->msg.mhdr.request_id = trpt->bup.ovals[3];
		((P4 *)this)->msg.mhdr.object_key = trpt->bup.ovals[4];
		((P4 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[5];
		((P4 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[6];
		((P4 *)this)->msg.mhdr.tag = trpt->bup.ovals[7];
		;
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 32: // STATE 16
		;
		XX = 1;
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 0, ((P4 *)this)->msgType, 1);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 1, ((int)((P4 *)this)->rcvConnId), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 2, ((int)((P4 *)this)->srcport), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 3, ((int)((P4 *)this)->msg.mhdr.request_id), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 4, ((int)((P4 *)this)->msg.mhdr.object_key), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 5, ((int)((P4 *)this)->msg.mhdr.reply_status), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 6, ((int)((P4 *)this)->msg.mhdr.forward_port), 0);
		unrecv(now.toTransportL[ Index(((int)((P4 *)this)->port), 3) ], XX-1, 7, ((int)((P4 *)this)->msg.mhdr.tag), 0);
		((P4 *)this)->msgType = trpt->bup.ovals[0];
		((P4 *)this)->rcvConnId = trpt->bup.ovals[1];
		((P4 *)this)->srcport = trpt->bup.ovals[2];
		((P4 *)this)->msg.mhdr.request_id = trpt->bup.ovals[3];
		((P4 *)this)->msg.mhdr.object_key = trpt->bup.ovals[4];
		((P4 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[5];
		((P4 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[6];
		((P4 *)this)->msg.mhdr.tag = trpt->bup.ovals[7];
		;
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;
;
		;
		
	case 34: // STATE 18
		;
		_m = unsend(((P4 *)this)->uout);
		;
		goto R999;
;
		;
		
	case 36: // STATE 20
		;
		_m = unsend(((P4 *)this)->savedmsg);
		;
		goto R999;

	case 37: // STATE 21
		;
		XX = 1;
		unrecv(((P4 *)this)->uin, XX-1, 0, ((P4 *)this)->msgType, 1);
		unrecv(((P4 *)this)->uin, XX-1, 1, ((int)((P4 *)this)->dstport), 0);
		unrecv(((P4 *)this)->uin, XX-1, 2, ((int)((P4 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P4 *)this)->uin, XX-1, 3, ((int)((P4 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P4 *)this)->uin, XX-1, 4, ((int)((P4 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P4 *)this)->uin, XX-1, 5, ((int)((P4 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P4 *)this)->uin, XX-1, 6, ((int)((P4 *)this)->msg.mhdr.tag), 0);
		((P4 *)this)->msgType = trpt->bup.ovals[0];
		((P4 *)this)->dstport = trpt->bup.ovals[1];
		((P4 *)this)->msg.mhdr.request_id = trpt->bup.ovals[2];
		((P4 *)this)->msg.mhdr.object_key = trpt->bup.ovals[3];
		((P4 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[4];
		((P4 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[5];
		((P4 *)this)->msg.mhdr.tag = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 38: // STATE 25
		;
	/* 0 */	((P4 *)this)->rcvConnId = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 40: // STATE 29
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 30
		;
		((P4 *)this)->connId[ Index(((P4 *)this)->srcport, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 31
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC GIOPAgent */

	case 44: // STATE 1
		;
		XX = 1;
		unrecv(((P3 *)this)->uin, XX-1, 0, 4, 1);
		unrecv(((P3 *)this)->uin, XX-1, 1, ((int)((P3 *)this)->objKey), 0);
		unrecv(((P3 *)this)->uin, XX-1, 2, trpt->bup.ovals[1], 0);
		unrecv(((P3 *)this)->uin, XX-1, 3, trpt->bup.ovals[2], 0);
		((P3 *)this)->objKey = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
	case 45: // STATE 4
		sv_restor();
		goto R999;

	case 46: // STATE 5
		;
		XX = 1;
		unrecv(((P3 *)this)->uin, XX-1, 0, 1, 1);
		unrecv(((P3 *)this)->uin, XX-1, 1, ((int)((P3 *)this)->objKey), 0);
		unrecv(((P3 *)this)->uin, XX-1, 2, ((int)((P3 *)this)->clPort), 0);
		unrecv(((P3 *)this)->uin, XX-1, 3, trpt->bup.ovals[2], 0);
		((P3 *)this)->objKey = trpt->bup.ovals[0];
		((P3 *)this)->clPort = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 47: // STATE 6
		;
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 7
		;
		XX = 1;
		unrecv(((P3 *)this)->lin, XX-1, 0, 10, 1);
		unrecv(((P3 *)this)->lin, XX-1, 1, ((int)((P3 *)this)->clPort), 0);
		unrecv(((P3 *)this)->lin, XX-1, 2, ((int)((P3 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P3 *)this)->lin, XX-1, 3, ((int)((P3 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P3 *)this)->lin, XX-1, 4, ((int)((P3 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P3 *)this)->lin, XX-1, 5, ((int)((P3 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P3 *)this)->lin, XX-1, 6, ((int)((P3 *)this)->msg.mhdr.tag), 0);
		((P3 *)this)->clPort = trpt->bup.ovals[0];
		((P3 *)this)->msg.mhdr.request_id = trpt->bup.ovals[1];
		((P3 *)this)->msg.mhdr.object_key = trpt->bup.ovals[2];
		((P3 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[3];
		((P3 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[4];
		((P3 *)this)->msg.mhdr.tag = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
	case 49: // STATE 11
		sv_restor();
		goto R999;
;
		;
			case 51: // STATE 15
		sv_restor();
		goto R999;

	case 52: // STATE 16
		;
		_m = unsend(((P3 *)this)->uout);
		;
		goto R999;
	case 53: // STATE 20
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 56: // STATE 26
		sv_restor();
		goto R999;
	case 57: // STATE 32
		sv_restor();
		goto R999;

	case 58: // STATE 35
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;

	case 59: // STATE 36
		;
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 39
		;
		XX = 1;
		unrecv(((P3 *)this)->uin, XX-1, 0, 2, 1);
		unrecv(((P3 *)this)->uin, XX-1, 1, ((int)((P3 *)this)->objKey), 0);
		unrecv(((P3 *)this)->uin, XX-1, 2, ((int)((P3 *)this)->reqId), 0);
		unrecv(((P3 *)this)->uin, XX-1, 3, ((int)((P3 *)this)->clPort), 0);
		((P3 *)this)->objKey = trpt->bup.ovals[0];
		((P3 *)this)->reqId = trpt->bup.ovals[1];
		((P3 *)this)->clPort = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 62: // STATE 41
		;
		sreply_reqId = trpt->bup.oval;
		;
		goto R999;
;
		;
			case 64: // STATE 46
		sv_restor();
		goto R999;
;
		;
			case 66: // STATE 51
		sv_restor();
		goto R999;

	case 67: // STATE 52
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;
	case 68: // STATE 57
		sv_restor();
		goto R999;
;
		;
		
	case 70: // STATE 61
		;
	/* 0 */	((P3 *)this)->connState = trpt->bup.oval;
		;
		;
		goto R999;

	case 71: // STATE 62
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;
	case 72: // STATE 66
		sv_restor();
		goto R999;
;
		;
		;
		;
		
	case 75: // STATE 73
		;
	/* 0 */	((P3 *)this)->clPort = trpt->bup.ovals[6];
		XX = 1;
		unrecv(((P3 *)this)->lin, XX-1, 0, 8, 1);
		unrecv(((P3 *)this)->lin, XX-1, 1, ((int)((P3 *)this)->clPort), 0);
		unrecv(((P3 *)this)->lin, XX-1, 2, ((int)((P3 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P3 *)this)->lin, XX-1, 3, ((int)((P3 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P3 *)this)->lin, XX-1, 4, ((int)((P3 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P3 *)this)->lin, XX-1, 5, ((int)((P3 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P3 *)this)->lin, XX-1, 6, ((int)((P3 *)this)->msg.mhdr.tag), 0);
		((P3 *)this)->clPort = trpt->bup.ovals[0];
		((P3 *)this)->msg.mhdr.request_id = trpt->bup.ovals[1];
		((P3 *)this)->msg.mhdr.object_key = trpt->bup.ovals[2];
		((P3 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[3];
		((P3 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[4];
		((P3 *)this)->msg.mhdr.tag = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 76: // STATE 74
		;
		((P3 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 78: // STATE 76
		;
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 77
		;
	/* 0 */	((P3 *)this)->reqId = trpt->bup.oval;
		;
		;
		goto R999;

	case 80: // STATE 78
		;
	/* 0 */	((P3 *)this)->reqId = trpt->bup.oval;
		;
		;
		goto R999;

	case 81: // STATE 84
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Server */

	case 82: // STATE 1
		;
		_m = unsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		;
		goto R999;

	case 83: // STATE 2
		;
		XX = 1;
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 0, 3, 1);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 1, ((int)((P2 *)this)->objKey), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 2, ((int)((P2 *)this)->opaqueData), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 3, ((int)((P2 *)this)->opaqueData2), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 4, ((int)now.gTag), 0);
		((P2 *)this)->opaqueData = trpt->bup.ovals[0];
		((P2 *)this)->opaqueData2 = trpt->bup.ovals[1];
		now.gTag = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 84: // STATE 3
		;
		_m = unsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		;
		goto R999;

	case 85: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC GIOPClient */

	case 86: // STATE 1
		;
		XX = 1;
		unrecv(((P1 *)this)->uin, XX-1, 0, 6, 1);
		unrecv(((P1 *)this)->uin, XX-1, 1, ((int)((P1 *)this)->tag), 0);
		unrecv(((P1 *)this)->uin, XX-1, 2, ((int)((P1 *)this)->objref.objKey), 0);
		unrecv(((P1 *)this)->uin, XX-1, 3, ((int)((P1 *)this)->objref.port), 0);
		((P1 *)this)->tag = trpt->bup.ovals[0];
		((P1 *)this)->objref.objKey = trpt->bup.ovals[1];
		((P1 *)this)->objref.port = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
	case 87: // STATE 4
		sv_restor();
		goto R999;
;
		;
		
	case 89: // STATE 6
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 92: // STATE 13
		;
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;
	case 93: // STATE 21
		sv_restor();
		goto R999;

	case 94: // STATE 22
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 95: // STATE 25
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 96: // STATE 26
		;
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 27
		;
		_m = unsend(((P1 *)this)->uout);
		;
		goto R999;

	case 98: // STATE 30
		;
	/* 0 */	((P1 *)this)->svrPort = trpt->bup.ovals[6];
		XX = 1;
		unrecv(((P1 *)this)->lin, XX-1, 0, 9, 1);
		unrecv(((P1 *)this)->lin, XX-1, 1, ((int)((P1 *)this)->svrPort), 0);
		unrecv(((P1 *)this)->lin, XX-1, 2, ((int)((P1 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P1 *)this)->lin, XX-1, 3, ((int)((P1 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P1 *)this)->lin, XX-1, 4, ((int)((P1 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P1 *)this)->lin, XX-1, 5, ((int)((P1 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P1 *)this)->lin, XX-1, 6, ((int)((P1 *)this)->msg.mhdr.tag), 0);
		((P1 *)this)->svrPort = trpt->bup.ovals[0];
		((P1 *)this)->msg.mhdr.request_id = trpt->bup.ovals[1];
		((P1 *)this)->msg.mhdr.object_key = trpt->bup.ovals[2];
		((P1 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[3];
		((P1 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[4];
		((P1 *)this)->msg.mhdr.tag = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
	case 99: // STATE 34
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 102: // STATE 38
		sv_restor();
		goto R999;

	case 103: // STATE 39
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 104: // STATE 41
		;
		_m = unsend(((P1 *)this)->uout);
		;
		goto R999;
	case 105: // STATE 46
		sv_restor();
		goto R999;
;
		;
			case 107: // STATE 54
		sv_restor();
		goto R999;

	case 108: // STATE 57
		;
		XX = 1;
		unrecv(((P1 *)this)->lin, XX-1, 0, 7, 1);
		unrecv(((P1 *)this)->lin, XX-1, 1, ((int)((P1 *)this)->svrPort), 0);
		unrecv(((P1 *)this)->lin, XX-1, 2, ((int)((P1 *)this)->msg.mhdr.request_id), 0);
		unrecv(((P1 *)this)->lin, XX-1, 3, ((int)((P1 *)this)->msg.mhdr.object_key), 0);
		unrecv(((P1 *)this)->lin, XX-1, 4, ((int)((P1 *)this)->msg.mhdr.reply_status), 0);
		unrecv(((P1 *)this)->lin, XX-1, 5, ((int)((P1 *)this)->msg.mhdr.forward_port), 0);
		unrecv(((P1 *)this)->lin, XX-1, 6, ((int)((P1 *)this)->msg.mhdr.tag), 0);
		((P1 *)this)->svrPort = trpt->bup.ovals[0];
		((P1 *)this)->msg.mhdr.request_id = trpt->bup.ovals[1];
		((P1 *)this)->msg.mhdr.object_key = trpt->bup.ovals[2];
		((P1 *)this)->msg.mhdr.reply_status = trpt->bup.ovals[3];
		((P1 *)this)->msg.mhdr.forward_port = trpt->bup.ovals[4];
		((P1 *)this)->msg.mhdr.tag = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 109: // STATE 58
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 59
		;
	/* 0 */	((P1 *)this)->reqId = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
			case 114: // STATE 67
		sv_restor();
		goto R999;

	case 115: // STATE 68
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;
;
		;
			case 117: // STATE 74
		sv_restor();
		goto R999;
;
		;
		;
		;
		
	case 120: // STATE 81
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 88
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 122: // STATE 1
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 125: // STATE 4
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 5
		;
	/* 0 */	((P0 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 127: // STATE 10
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 12
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 130: // STATE 14
		;
		((P0 *)this)->objref.objKey = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 15
		;
		((P0 *)this)->objref.port = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 133: // STATE 18
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 22
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 136: // STATE 25
		;
		_m = unsend(((P0 *)this)->lout);
		;
		goto R999;

	case 137: // STATE 26
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 27
		;
	/* 0 */	((P0 *)this)->tag = trpt->bup.ovals[1];
		XX = 1;
		unrecv(((P0 *)this)->lin, XX-1, 0, 5, 1);
		unrecv(((P0 *)this)->lin, XX-1, 1, ((int)((P0 *)this)->tag), 0);
		unrecv(((P0 *)this)->lin, XX-1, 2, ((int)((P0 *)this)->status), 0);
		((P0 *)this)->status = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 139: // STATE 28
		;
	/* 0 */	((P0 *)this)->status = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 141: // STATE 30
		;
	/* 0 */	((P0 *)this)->status = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 143: // STATE 32
		;
	/* 0 */	((P0 *)this)->status = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 145: // STATE 34
		;
	/* 0 */	((P0 *)this)->status = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 147: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;
	}

