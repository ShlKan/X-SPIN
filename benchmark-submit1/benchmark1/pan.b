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
		
	case 21: // STATE 57
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 22: // STATE 1
		;
		now.Pid[0] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 23: // STATE 2
		;
		now.Pid[1] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 24: // STATE 3
		;
		now.Pid[2] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 25: // STATE 4
		;
		now.Pid[3] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 26: // STATE 5
		;
		now.Pid[4] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 27: // STATE 6
		;
		now.Pid[5] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 28: // STATE 7
		;
		now.Pid[6] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 29: // STATE 8
		;
		now.Pid[7] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 30: // STATE 9
		;
		now.Pid[8] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 31: // STATE 10
		;
		now.Pid[9] = trpt->bup.oval;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 32: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC transport */

	case 33: // STATE 1
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

	case 34: // STATE 2
		;
		_m = unsend(now.toTransportL[ Index(((int)((P4 *)this)->dstport), 3) ]);
		;
		goto R999;

	case 35: // STATE 3
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 4
		;
		((P4 *)this)->connId[ Index(((P4 *)this)->dstport, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 5
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 39: // STATE 10
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

	case 40: // STATE 16
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
		
	case 42: // STATE 18
		;
		_m = unsend(((P4 *)this)->uout);
		;
		goto R999;
;
		;
		
	case 44: // STATE 20
		;
		_m = unsend(((P4 *)this)->savedmsg);
		;
		goto R999;

	case 45: // STATE 21
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

	case 46: // STATE 25
		;
	/* 0 */	((P4 *)this)->rcvConnId = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 48: // STATE 29
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 49: // STATE 30
		;
		((P4 *)this)->connId[ Index(((P4 *)this)->srcport, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 31
		;
	/* 0 */	((P4 *)this)->msgType = trpt->bup.oval;
		;
		;
		goto R999;

	case 51: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC GIOPAgent */

	case 52: // STATE 1
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
	case 53: // STATE 4
		sv_restor();
		goto R999;

	case 54: // STATE 5
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

	case 55: // STATE 6
		;
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 7
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
	case 57: // STATE 10
		sv_restor();
		goto R999;
;
		;
			case 59: // STATE 13
		sv_restor();
		goto R999;

	case 60: // STATE 14
		;
		_m = unsend(((P3 *)this)->uout);
		;
		goto R999;
	case 61: // STATE 17
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 64: // STATE 23
		sv_restor();
		goto R999;
	case 65: // STATE 29
		sv_restor();
		goto R999;

	case 66: // STATE 32
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;

	case 67: // STATE 36
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
		;
		;
			case 70: // STATE 41
		sv_restor();
		goto R999;
;
		;
			case 72: // STATE 46
		sv_restor();
		goto R999;

	case 73: // STATE 47
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;
	case 74: // STATE 50
		sv_restor();
		goto R999;
;
		;
		
	case 76: // STATE 54
		;
	/* 0 */	((P3 *)this)->connState = trpt->bup.oval;
		;
		;
		goto R999;

	case 77: // STATE 55
		;
		_m = unsend(((P3 *)this)->lout);
		;
		goto R999;
	case 78: // STATE 57
		sv_restor();
		goto R999;
;
		;
		;
		;
		
	case 81: // STATE 64
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

	case 82: // STATE 65
		;
		((P3 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 84: // STATE 67
		;
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 68
		;
	/* 0 */	((P3 *)this)->reqId = trpt->bup.oval;
		;
		;
		goto R999;

	case 86: // STATE 69
		;
	/* 0 */	((P3 *)this)->reqId = trpt->bup.oval;
		;
		;
		goto R999;

	case 87: // STATE 75
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Server */

	case 88: // STATE 1
		;
		_m = unsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		;
		goto R999;

	case 89: // STATE 2
		;
	/* 0 */	((P2 *)this)->tag = trpt->bup.ovals[3];
		XX = 1;
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 0, 3, 1);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 1, ((int)((P2 *)this)->objKey), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 2, ((int)((P2 *)this)->opaqueData), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 3, ((int)((P2 *)this)->opaqueData2), 0);
		unrecv(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], XX-1, 4, ((int)((P2 *)this)->tag), 0);
		((P2 *)this)->opaqueData = trpt->bup.ovals[0];
		((P2 *)this)->opaqueData2 = trpt->bup.ovals[1];
		((P2 *)this)->tag = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 90: // STATE 3
		;
		_m = unsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		;
		goto R999;

	case 91: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC GIOPClient */

	case 92: // STATE 1
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
	case 93: // STATE 4
		sv_restor();
		goto R999;
;
		;
		
	case 95: // STATE 6
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 98: // STATE 13
		;
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;
	case 99: // STATE 20
		sv_restor();
		goto R999;

	case 100: // STATE 21
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 101: // STATE 24
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 102: // STATE 25
		;
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 26
		;
		_m = unsend(((P1 *)this)->uout);
		;
		goto R999;

	case 104: // STATE 29
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
	case 105: // STATE 32
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 108: // STATE 36
		sv_restor();
		goto R999;

	case 109: // STATE 37
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;

	case 110: // STATE 39
		;
		_m = unsend(((P1 *)this)->uout);
		;
		goto R999;
	case 111: // STATE 44
		sv_restor();
		goto R999;
;
		;
			case 113: // STATE 52
		sv_restor();
		goto R999;

	case 114: // STATE 55
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

	case 115: // STATE 56
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 57
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
			case 120: // STATE 65
		sv_restor();
		goto R999;

	case 121: // STATE 66
		;
		_m = unsend(((P1 *)this)->lout);
		;
		goto R999;
;
		;
			case 123: // STATE 72
		sv_restor();
		goto R999;
;
		;
		;
		;
		
	case 126: // STATE 79
		;
		((P1 *)this)->reqId = trpt->bup.oval;
		;
		goto R999;

	case 127: // STATE 86
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 128: // STATE 1
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 131: // STATE 4
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 5
		;
	/* 0 */	((P0 *)this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 133: // STATE 10
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
	case 134: // STATE 23
		sv_restor();
		goto R999;

	case 135: // STATE 24
		;
		_m = unsend(((P0 *)this)->lout);
		;
		goto R999;

	case 136: // STATE 25
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

	case 137: // STATE 26
		;
	/* 0 */	((P0 *)this)->status = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
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
		
	case 145: // STATE 36
		;
		p_restor(II);
		;
		;
		goto R999;
	}

