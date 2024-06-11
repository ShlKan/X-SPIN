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
	case 3: // STATE 1 - ./v4_long.never:15 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
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
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - ./v4_long.never:16 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
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
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - ./v4_long.never:17 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][5] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - ./v4_long.never:18 - [((User[Pid[6]]._p==URequestSent))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][7] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - ./v4_long.never:19 - [((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][9] = 1;
		if (!(((( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - ./v4_long.never:20 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][11] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - ./v4_long.never:21 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
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
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 15 - ./v4_long.never:22 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][15] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 24 - ./v4_long.never:28 - [(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][24] = 1;
		if (!( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 26 - ./v4_long.never:29 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
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
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 27 - ./v4_long.never:29 - [assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][27] = 1;
		spin_assert( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))), " !(( !(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 32 - ./v4_long.never:33 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][32] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 34 - ./v4_long.never:34 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
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
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 35 - ./v4_long.never:34 - [assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][35] = 1;
		spin_assert( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))), " !(( !(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 37 - ./v4_long.never:35 - [(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][37] = 1;
		if (!( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 39 - ./v4_long.never:36 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][39] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 44 - ./v4_long.never:40 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][44] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 45 - ./v4_long.never:40 - [assert(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][45] = 1;
		spin_assert( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)), " !((User[Pid[6]]._p==NoException))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 52 - ./v4_long.never:45 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported52 = 0;
			if (verbose && !reported52)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported52 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][52] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 54 - ./v4_long.never:46 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][54] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 55 - ./v4_long.never:46 - [assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][55] = 1;
		spin_assert( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))), " !(( !(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 57 - ./v4_long.never:47 - [(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][57] = 1;
		if (!( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 59 - ./v4_long.never:48 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported59 = 0;
			if (verbose && !reported59)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported59 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported59 = 0;
			if (verbose && !reported59)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported59 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][59] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 64 - ./v4_long.never:52 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][64] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 66 - ./v4_long.never:53 - [((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported66 = 0;
			if (verbose && !reported66)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported66 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported66 = 0;
			if (verbose && !reported66)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported66 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][66] = 1;
		if (!(( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 71 - ./v4_long.never:57 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][71] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 73 - ./v4_long.never:58 - [((User[Pid[6]]._p==URequestSent))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][73] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 75 - ./v4_long.never:59 - [((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][75] = 1;
		if (!(((( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 77 - ./v4_long.never:60 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][77] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 79 - ./v4_long.never:61 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported79 = 0;
			if (verbose && !reported79)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported79 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported79 = 0;
			if (verbose && !reported79)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported79 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][79] = 1;
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 81 - ./v4_long.never:62 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][81] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 88 - ./v4_long.never:67 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][88] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 90 - ./v4_long.never:68 - [((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][90] = 1;
		if (!(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 92 - ./v4_long.never:69 - [(((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][92] = 1;
		if (!((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 94 - ./v4_long.never:70 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][94] = 1;
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 99 - ./v4_long.never:74 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][99] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 101 - ./v4_long.never:75 - [((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][101] = 1;
		if (!(( !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 103 - ./v4_long.never:76 - [(((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][103] = 1;
		if (!((( !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 108 - ./v4_long.never:80 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][108] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 109 - ./v4_long.never:80 - [assert(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][109] = 1;
		spin_assert( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)), " !((User[Pid[6]]._p==NoException))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 116 - ./v4_long.never:85 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][116] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 118 - ./v4_long.never:86 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][118] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 119 - ./v4_long.never:86 - [assert(!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][119] = 1;
		spin_assert( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))), " !(( !(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 121 - ./v4_long.never:87 - [(!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][121] = 1;
		if (!( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 123 - ./v4_long.never:88 - [((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported123 = 0;
			if (verbose && !reported123)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported123 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported123 = 0;
			if (verbose && !reported123)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported123 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][123] = 1;
		if (!(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 128 - ./v4_long.never:92 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][128] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 130 - ./v4_long.never:93 - [((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][130] = 1;
		if (!(( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 135 - ./v4_long.never:97 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][135] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 137 - ./v4_long.never:98 - [((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][137] = 1;
		if (!(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 139 - ./v4_long.never:99 - [(((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][139] = 1;
		if (!((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 141 - ./v4_long.never:100 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][141] = 1;
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 146 - ./v4_long.never:104 - [(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported146 = 0;
			if (verbose && !reported146)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported146 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported146 = 0;
			if (verbose && !reported146)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported146 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][146] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 148 - ./v4_long.never:105 - [((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported148 = 0;
			if (verbose && !reported148)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported148 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported148 = 0;
			if (verbose && !reported148)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported148 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][148] = 1;
		if (!(( !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 150 - ./v4_long.never:106 - [(((!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported150 = 0;
			if (verbose && !reported150)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported150 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported150 = 0;
			if (verbose && !reported150)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported150 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][150] = 1;
		if (!((( !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 155 - ./v4_long.never:110 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported155 = 0;
			if (verbose && !reported155)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported155 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported155 = 0;
			if (verbose && !reported155)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported155 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][155] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 156 - ./v4_long.never:110 - [assert(!((User[Pid[6]]._p==NoException)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][156] = 1;
		spin_assert( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)), " !((User[Pid[6]]._p==NoException))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 163 - ./v4_long.never:115 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][163] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 165 - ./v4_long.never:116 - [((User[Pid[6]]._p==URequestSent))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][165] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 167 - ./v4_long.never:117 - [((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][167] = 1;
		if (!(((( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 169 - ./v4_long.never:118 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][169] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 171 - ./v4_long.never:119 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][171] = 1;
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 173 - ./v4_long.never:120 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][173] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 175 - ./v4_long.never:121 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][175] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 177 - ./v4_long.never:122 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][177] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 184 - ./v4_long.never:127 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][184] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 186 - ./v4_long.never:128 - [(((User[Pid[6]]._p==NoException)&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][186] = 1;
		if (!(((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 188 - ./v4_long.never:129 - [((User[Pid[6]]._p==NoException))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][188] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 190 - ./v4_long.never:130 - [((User[Pid[6]]._p==URequestSent))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][190] = 1;
		if (!((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 192 - ./v4_long.never:131 - [((((!((User[Pid[6]]._p==NoException))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||(!((User[Pid[6]]._p==NoException))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported192 = 0;
			if (verbose && !reported192)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported192 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported192 = 0;
			if (verbose && !reported192)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported192 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][192] = 1;
		if (!(((( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||( !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 194 - ./v4_long.never:132 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent))||((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][194] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))||(( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 196 - ./v4_long.never:133 - [((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][196] = 1;
		if (!(((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 198 - ./v4_long.never:134 - [(((((!((!(((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&!((User[Pid[6]]._p==NoException))))&&!((((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2))&&!((User[Pid[6]]._p==NoException)))))&&!((User[Pid[6]]._p==NoException)))&&((((Server[Pid[8]]._p==User6Processed1)||(Server[Pid[9]]._p==User6Processed1))||(Server[Pid[8]]._p==User6Processed2))||(Server[Pid[9]]._p==User6Processed2)))&&(User[Pid[6]]._p==URequestSent)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][198] = 1;
		if (!((((( !(( !(((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27))))&& !((((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))))&& !((((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==27)))&&((((((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==5)||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==5))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[8])))->_p)==30))||(((int)((P2 *)Pptr(BASE+((int)now.Pid[9])))->_p)==30)))&&(((int)((P0 *)Pptr(BASE+((int)now.Pid[6])))->_p)==25))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 208 - ./v4_long.never:140 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported208 = 0;
			if (verbose && !reported208)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported208 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported208 = 0;
			if (verbose && !reported208)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported208 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][208] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 76: // STATE 1 - giop3.pr:789 - [Pid[0] = run transport(0,toTransportU[0],toClientL)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[0]);
		now.Pid[0] = addproc(II, 1, 4, 0, now.toTransportU[0], now.toClientL, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[0]", ((int)now.Pid[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 2 - giop3.pr:790 - [Pid[1] = run transport(1,toTransportU[1],toAgentL[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[1]);
		now.Pid[1] = addproc(II, 1, 4, 1, now.toTransportU[1], now.toAgentL[1], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[1]", ((int)now.Pid[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 3 - giop3.pr:791 - [Pid[2] = run transport(2,toTransportU[2],toAgentL[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][3] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[2]);
		now.Pid[2] = addproc(II, 1, 4, 2, now.toTransportU[2], now.toAgentL[2], 0, 0);
#ifdef VAR_RANGES
		logval("Pid[2]", ((int)now.Pid[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 4 - giop3.pr:793 - [Pid[3] = run GIOPClient(toClientU,toUser,toClientL,toTransportU[0])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][4] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[3]);
		now.Pid[3] = addproc(II, 1, 1, now.toClientU, now.toUser, now.toClientL, now.toTransportU[0], 0);
#ifdef VAR_RANGES
		logval("Pid[3]", ((int)now.Pid[3]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 5 - giop3.pr:795 - [Pid[4] = run GIOPAgent(1,toAgentU[1],toServer[1],toAgentL[1],toTransportU[1])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[4]);
		now.Pid[4] = addproc(II, 1, 3, 1, now.toAgentU[1], now.toServer[1], now.toAgentL[1], now.toTransportU[1]);
#ifdef VAR_RANGES
		logval("Pid[4]", ((int)now.Pid[4]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 6 - giop3.pr:796 - [Pid[5] = run GIOPAgent(2,toAgentU[2],toServer[2],toAgentL[2],toTransportU[2])] (0:0:1 - 0)
		IfNotBlocked
		reached[5][6] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[5]);
		now.Pid[5] = addproc(II, 1, 3, 2, now.toAgentU[2], now.toServer[2], now.toAgentL[2], now.toTransportU[2]);
#ifdef VAR_RANGES
		logval("Pid[5]", ((int)now.Pid[5]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 7 - giop3.pr:798 - [Pid[6] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][7] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[6]);
		now.Pid[6] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[6]", ((int)now.Pid[6]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 8 - giop3.pr:799 - [Pid[7] = run User(toUser,toClientU)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][8] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[7]);
		now.Pid[7] = addproc(II, 1, 0, now.toUser, now.toClientU, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[7]", ((int)now.Pid[7]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 9 - giop3.pr:801 - [Pid[8] = run Server(1,0)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][9] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[8]);
		now.Pid[8] = addproc(II, 1, 2, 1, 0, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[8]", ((int)now.Pid[8]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 10 - giop3.pr:802 - [Pid[9] = run Server(2,1)] (0:0:1 - 0)
		IfNotBlocked
		reached[5][10] = 1;
		(trpt+1)->bup.oval = ((int)now.Pid[9]);
		now.Pid[9] = addproc(II, 1, 2, 2, 1, 0, 0, 0);
#ifdef VAR_RANGES
		logval("Pid[9]", ((int)now.Pid[9]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 12 - giop3.pr:805 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[5][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC transport */
	case 87: // STATE 1 - giop3.pr:714 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 88: // STATE 2 - giop3.pr:722 - [toTransportL[dstport]!msgType,connId[dstport],port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 89: // STATE 3 - giop3.pr:725 - [((msgType==CloseConnection))] (0:0:1 - 0)
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
	case 90: // STATE 4 - giop3.pr:726 - [connId[dstport] = ((connId[dstport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->dstport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:dstport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->dstport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 5 - giop3.pr:727 - [((msgType!=CloseConnection))] (0:0:1 - 0)
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
	case 92: // STATE 9 - giop3.pr:734 - [(savedmsg?[msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag])] (0:0:0 - 0)
		IfNotBlocked
		reached[4][9] = 1;
		if (!(not_RV(((P4 *)this)->savedmsg) && \
		(q_len(((P4 *)this)->savedmsg) > 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 10 - giop3.pr:735 - [savedmsg?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
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
	case 94: // STATE 16 - giop3.pr:741 - [toTransportL[port]?msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:8 - 0)
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
	case 95: // STATE 17 - giop3.pr:752 - [((rcvConnId==connId[srcport]))] (0:0:0 - 0)
		IfNotBlocked
		reached[4][17] = 1;
		if (!((((int)((P4 *)this)->rcvConnId)==((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 18 - giop3.pr:754 - [uout!msgType,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 97: // STATE 19 - giop3.pr:755 - [(timeout)] (0:0:0 - 0)
		IfNotBlocked
		reached[4][19] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 98: // STATE 20 - giop3.pr:763 - [savedmsg!msgType,rcvConnId,srcport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 99: // STATE 21 - giop3.pr:764 - [uin?msgType,dstport,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 100: // STATE 25 - giop3.pr:768 - [((rcvConnId!=connId[srcport]))] (0:0:1 - 0)
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
	case 101: // STATE 26 - giop3.pr:769 - [printf('Old message encountered -> discarded\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[4][26] = 1;
		Printf("Old message encountered -> discarded\n");
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 29 - giop3.pr:774 - [((msgType==CloseConnection))] (0:0:1 - 0)
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
	case 103: // STATE 30 - giop3.pr:775 - [connId[srcport] = ((connId[srcport]+1)%8)] (0:0:1 - 0)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]);
		((P4 *)this)->connId[ Index(((P4 *)this)->srcport, 3) ] = ((((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ])+1)%8);
#ifdef VAR_RANGES
		logval("transport:connId[transport:srcport]", ((int)((P4 *)this)->connId[ Index(((int)((P4 *)this)->srcport), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 31 - giop3.pr:776 - [((msgType!=CloseConnection))] (0:0:1 - 0)
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
	case 105: // STATE 37 - giop3.pr:781 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[4][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPAgent */
	case 106: // STATE 1 - giop3.pr:515 - [uin?SRegister,objKey,_,_] (0:0:3 - 0)
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
	case 107: // STATE 4 - giop3.pr:517 - [D_STEP517]
		IfNotBlocked

		reached[3][4] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_174_0: /* 2 */
		now.gPublished[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("gPublished[GIOPAgent:objKey]", ((int)now.gPublished[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
S_175_0: /* 2 */
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->port);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		goto S_254_0;
S_254_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 108: // STATE 5 - giop3.pr:527 - [uin?SMigrateReq,objKey,clPort,_] (0:0:3 - 0)
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
	case 109: // STATE 6 - giop3.pr:532 - [registered[objKey] = clPort] (0:0:1 - 0)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
		((P3 *)this)->registered[ Index(((P3 *)this)->objKey, 2) ] = ((int)((P3 *)this)->clPort);
#ifdef VAR_RANGES
		logval("GIOPAgent:registered[GIOPAgent:objKey]", ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 7 - giop3.pr:536 - [lin?Request,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
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
	case 111: // STATE 11 - giop3.pr:541 - [D_STEP541]
		IfNotBlocked

		reached[3][11] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_180_0: /* 2 */
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
S_181_0: /* 2 */
		((P3 *)this)->objKey = ((int)((P3 *)this)->msg.mhdr.object_key);
#ifdef VAR_RANGES
		logval("GIOPAgent:objKey", ((int)((P3 *)this)->objKey));
#endif
		;
S_182_0: /* 2 */
		now.numRequestsRcvd[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRequestsRcvd[GIOPAgent:port]", ((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_209_0;
S_209_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 112: // STATE 12 - giop3.pr:549 - [((registered[objKey]==port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 15 - giop3.pr:554 - [D_STEP554]
		IfNotBlocked

		reached[3][15] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_185_0: /* 2 */
		((P3 *)this)->connState = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
S_186_0: /* 2 */
		srequest_reqId = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("srequest_reqId", ((int)srequest_reqId));
#endif
		;
		goto S_188_0;
S_188_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 114: // STATE 16 - giop3.pr:560 - [uout!SRequest,objKey,reqId,clPort,msg.mhdr.tag] (0:0:0 - 0)
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
	case 115: // STATE 20 - giop3.pr:563 - [D_STEP563]
		IfNotBlocked

		reached[3][20] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_189_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_190_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)+1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_191_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		goto S_210_0;
S_210_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 116: // STATE 21 - giop3.pr:571 - [((registered[objKey]!=port))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][21] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])!=((int)((P3 *)this)->port))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 22 - giop3.pr:574 - [((registered[objKey]==255))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][22] = 1;
		if (!((((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ])==255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 26 - giop3.pr:576 - [D_STEP576]
		IfNotBlocked

		reached[3][26] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_195_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_196_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_197_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 5;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_206_0;
S_206_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 119: // STATE 32 - giop3.pr:585 - [D_STEP585]
		IfNotBlocked

		reached[3][32] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_200_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_201_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_202_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 4;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
S_203_0: /* 2 */
		((P3 *)this)->msg.mhdr.forward_port = ((int)((P3 *)this)->registered[ Index(((int)((P3 *)this)->objKey), 2) ]);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.forward_port", ((int)((P3 *)this)->msg.mhdr.forward_port));
#endif
		;
		goto S_206_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 120: // STATE 35 - giop3.pr:594 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 121: // STATE 36 - giop3.pr:595 - [numRepliesSent[port] = (numRepliesSent[port]+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[3][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]);
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 39 - giop3.pr:598 - [uin?SReply,objKey,reqId,clPort] (0:0:3 - 0)
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
	case 123: // STATE 40 - giop3.pr:604 - [assert((requested[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][40] = 1;
		spin_assert((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])!=0), "(requested[reqId]!=0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 41 - giop3.pr:606 - [sreply_reqId = reqId] (0:0:1 - 0)
		IfNotBlocked
		reached[3][41] = 1;
		(trpt+1)->bup.oval = ((int)sreply_reqId);
		sreply_reqId = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("sreply_reqId", ((int)sreply_reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 42 - giop3.pr:610 - [((requested[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][42] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 46 - giop3.pr:613 - [D_STEP613]
		IfNotBlocked

		reached[3][46] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_215_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_216_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_217_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		goto S_231_0;
S_231_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 127: // STATE 47 - giop3.pr:620 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][47] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 51 - giop3.pr:621 - [D_STEP621]
		IfNotBlocked

		reached[3][51] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_220_0: /* 2 */
		((P3 *)this)->msg.mhdr.request_id = ((int)((P3 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.request_id", ((int)((P3 *)this)->msg.mhdr.request_id));
#endif
		;
S_221_0: /* 2 */
		((P3 *)this)->msg.mhdr.object_key = ((int)((P3 *)this)->objKey);
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.object_key", ((int)((P3 *)this)->msg.mhdr.object_key));
#endif
		;
S_222_0: /* 2 */
		((P3 *)this)->msg.mhdr.reply_status = 1;
#ifdef VAR_RANGES
		logval("GIOPAgent:msg.mhdr.reply_status", ((int)((P3 *)this)->msg.mhdr.reply_status));
#endif
		;
		goto S_224_0;
S_224_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 129: // STATE 52 - giop3.pr:627 - [lout!Reply,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 130: // STATE 57 - giop3.pr:629 - [D_STEP629]
		IfNotBlocked

		reached[3][57] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_225_0: /* 2 */
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_226_0: /* 2 */
		((P3 *)this)->numOutstandingReqs = (((int)((P3 *)this)->numOutstandingReqs)-1);
#ifdef VAR_RANGES
		logval("GIOPAgent:numOutstandingReqs", ((int)((P3 *)this)->numOutstandingReqs));
#endif
		;
S_227_0: /* 2 */
		srequested[ Index(((P3 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("srequested[GIOPAgent:reqId]", ((int)srequested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
S_228_0: /* 2 */
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = (((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ])+1);
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_231_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 131: // STATE 60 - giop3.pr:642 - [((numOutstandingReqs==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][60] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 61 - giop3.pr:644 - [((connState==1))] (0:0:1 - 0)
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
	case 133: // STATE 62 - giop3.pr:647 - [lout!CloseConnection,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 134: // STATE 66 - giop3.pr:649 - [D_STEP649]
		IfNotBlocked

		reached[3][66] = 1;
		reached[3][t->st] = 1;
		reached[3][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_235_0: /* 2 */
		((P3 *)this)->connState = 0;
#ifdef VAR_RANGES
		logval("GIOPAgent:connState", ((int)((P3 *)this)->connState));
#endif
		;
S_236_0: /* 2 */
		now.numRequestsRcvd[ Index(((P3 *)this)->port, 3) ] = 0;
#ifdef VAR_RANGES
		logval("numRequestsRcvd[GIOPAgent:port]", ((int)now.numRequestsRcvd[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
S_237_0: /* 2 */
		now.numRepliesSent[ Index(((P3 *)this)->port, 3) ] = 0;
#ifdef VAR_RANGES
		logval("numRepliesSent[GIOPAgent:port]", ((int)now.numRepliesSent[ Index(((int)((P3 *)this)->port), 3) ]));
#endif
		;
		goto S_241_0;
S_241_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 135: // STATE 67 - giop3.pr:655 - [((connState!=1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][67] = 1;
		if (!((((int)((P3 *)this)->connState)!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 70 - giop3.pr:659 - [((numOutstandingReqs!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][70] = 1;
		if (!((((int)((P3 *)this)->numOutstandingReqs)!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 73 - giop3.pr:664 - [lin?CancelRequest,clPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 138: // STATE 74 - giop3.pr:665 - [reqId = msg.mhdr.request_id] (0:0:1 - 0)
		IfNotBlocked
		reached[3][74] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->reqId);
		((P3 *)this)->reqId = ((int)((P3 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPAgent:reqId", ((int)((P3 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 75 - giop3.pr:667 - [((requested[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][75] = 1;
		if (!((((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 76 - giop3.pr:670 - [requested[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[3][76] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]);
		((P3 *)this)->requested[ Index(((P3 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("GIOPAgent:requested[GIOPAgent:reqId]", ((int)((P3 *)this)->requested[ Index(((int)((P3 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 77 - giop3.pr:672 - [((requested[reqId]==0))] (0:0:1 - 0)
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
	case 142: // STATE 78 - giop3.pr:675 - [((requested[reqId]==2))] (0:0:1 - 0)
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
	case 143: // STATE 84 - giop3.pr:681 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][84] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Server */
	case 144: // STATE 1 - giop3.pr:422 - [toAgentU[port]!SRegister,objKey,port,0] (0:0:0 - 0)
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
	case 145: // STATE 2 - giop3.pr:427 - [toServer[port]?SRequest,eval(objKey),opaqueData,opaqueData2,tag] (0:0:3 - 0)
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
		_m = 4; goto P999; /* 0 */
	case 146: // STATE 3 - giop3.pr:431 - [((tag==Pid[6]))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((int)((P2 *)this)->tag)==((int)now.Pid[6]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: tag */  (trpt+1)->bup.oval = ((P2 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->tag = 0;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 4 - giop3.pr:431 - [user6Processed = (user6Processed+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.user6Processed);
		now.user6Processed = (((int)now.user6Processed)+1);
#ifdef VAR_RANGES
		logval("user6Processed", ((int)now.user6Processed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 6 - giop3.pr:433 - [((tag==Pid[7]))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][6] = 1;
		if (!((((int)((P2 *)this)->tag)==((int)now.Pid[7]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: tag */  (trpt+1)->bup.oval = ((P2 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->tag = 0;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 7 - giop3.pr:433 - [user7Processed = (user7Processed+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][7] = 1;
		(trpt+1)->bup.oval = ((int)now.user7Processed);
		now.user7Processed = (((int)now.user7Processed)+1);
#ifdef VAR_RANGES
		logval("user7Processed", ((int)now.user7Processed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 12 - giop3.pr:440 - [toAgentU[port]!SReply,objKey,opaqueData,opaqueData2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][12] = 1;
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
	case 151: // STATE 13 - giop3.pr:442 - [((numMigrations<2))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][13] = 1;
		if (!((((int)((P2 *)this)->numMigrations)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 14 - giop3.pr:448 - [numMigrations = (numMigrations+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->numMigrations);
		((P2 *)this)->numMigrations = (((int)((P2 *)this)->numMigrations)+1);
#ifdef VAR_RANGES
		logval("Server:numMigrations", ((int)((P2 *)this)->numMigrations));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 15 - giop3.pr:450 - [((port==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][15] = 1;
		if (!((((int)((P2 *)this)->port)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 16 - giop3.pr:451 - [newport = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->newport);
		((P2 *)this)->newport = 2;
#ifdef VAR_RANGES
		logval("Server:newport", ((int)((P2 *)this)->newport));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 17 - giop3.pr:452 - [((port==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((((int)((P2 *)this)->port)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 18 - giop3.pr:453 - [newport = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][18] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->newport);
		((P2 *)this)->newport = 1;
#ifdef VAR_RANGES
		logval("Server:newport", ((int)((P2 *)this)->newport));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 20 - giop3.pr:455 - [assert(0)] (0:0:0 - 0)
		IfNotBlocked
		reached[2][20] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 23 - giop3.pr:460 - [toAgentU[newport]!SRegister,objKey,port,0] (0:0:0 - 0)
		IfNotBlocked
		reached[2][23] = 1;
		if (q_full(now.toAgentU[ Index(((int)((P2 *)this)->newport), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toAgentU[ Index(((int)((P2 *)this)->newport), 3) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->port)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toAgentU[ Index(((int)((P2 *)this)->newport), 3) ], 0, 4, ((int)((P2 *)this)->objKey), ((int)((P2 *)this)->port), 0, 0, 0, 0, 0, 4);
		if (q_zero(now.toAgentU[ Index(((int)((P2 *)this)->newport), 3) ])) { boq = now.toAgentU[ Index(((int)((P2 *)this)->newport), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 159: // STATE 24 - giop3.pr:465 - [toAgentU[port]!SMigrateReq,objKey,newport,0] (0:0:0 - 0)
		IfNotBlocked
		reached[2][24] = 1;
		if (q_full(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->objKey)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->newport)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ], 0, 1, ((int)((P2 *)this)->objKey), ((int)((P2 *)this)->newport), 0, 0, 0, 0, 0, 4);
		if (q_zero(now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ])) { boq = now.toAgentU[ Index(((int)((P2 *)this)->port), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 160: // STATE 26 - giop3.pr:476 - [(toServer[port]??[SRequest,eval(objKey)])] (0:0:0 - 0)
		IfNotBlocked
		reached[2][26] = 1;
		if (!(not_RV(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]) && \
		Q_has(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], 1, 3, 1, ((int)((P2 *)this)->objKey), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 27 - giop3.pr:477 - [toServer[port]??SRequest,eval(objKey),opaqueData,opaqueData2,tag] (0:0:4 - 0)
		reached[2][27] = 1;
		if (q_zero(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]))
		{	if (boq != now.toServer[ Index(((int)((P2 *)this)->port), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.toServer[ Index(((int)((P2 *)this)->port), 3) ]) == 0) continue;

		XX=1;
		if (!(XX = Q_has(now.toServer[ Index(((int)((P2 *)this)->port), 3) ], 1, 3, 1, ((int)((P2 *)this)->objKey), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))) continue;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = XX;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)this)->opaqueData);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)this)->opaqueData2);
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)this)->tag);
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
		_m = 4; goto P999; /* 0 */
	case 162: // STATE 28 - giop3.pr:480 - [((tag==Pid[6]))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][28] = 1;
		if (!((((int)((P2 *)this)->tag)==((int)now.Pid[6]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: tag */  (trpt+1)->bup.oval = ((P2 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->tag = 0;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 29 - giop3.pr:480 - [user6Processed = (user6Processed+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][29] = 1;
		(trpt+1)->bup.oval = ((int)now.user6Processed);
		now.user6Processed = (((int)now.user6Processed)+1);
#ifdef VAR_RANGES
		logval("user6Processed", ((int)now.user6Processed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 31 - giop3.pr:482 - [((tag==Pid[7]))] (0:0:1 - 0)
		IfNotBlocked
		reached[2][31] = 1;
		if (!((((int)((P2 *)this)->tag)==((int)now.Pid[7]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: tag */  (trpt+1)->bup.oval = ((P2 *)this)->tag;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->tag = 0;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 32 - giop3.pr:482 - [user7Processed = (user7Processed+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((int)now.user7Processed);
		now.user7Processed = (((int)now.user7Processed)+1);
#ifdef VAR_RANGES
		logval("user7Processed", ((int)now.user7Processed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 37 - giop3.pr:488 - [toAgentU[port]!SReply,objKey,opaqueData,opaqueData2] (0:0:0 - 0)
		IfNotBlocked
		reached[2][37] = 1;
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
	case 167: // STATE 45 - giop3.pr:495 - [port = newport] (0:0:1 - 0)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->port);
		((P2 *)this)->port = ((int)((P2 *)this)->newport);
#ifdef VAR_RANGES
		logval("Server:port", ((int)((P2 *)this)->port));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 49 - giop3.pr:498 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][49] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC GIOPClient */
	case 169: // STATE 1 - giop3.pr:226 - [uin?URequest,tag,objref.objKey,objref.port] (0:0:3 - 0)
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
	case 170: // STATE 4 - giop3.pr:232 - [D_STEP232]
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

	case 171: // STATE 5 - giop3.pr:239 - [((usedReqId[reqId]!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 6 - giop3.pr:240 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 7 - giop3.pr:241 - [assert((reqId<4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		spin_assert((((int)((P1 *)this)->reqId)<4), "(reqId<4)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 8 - giop3.pr:243 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 13 - giop3.pr:248 - [usedReqId[reqId] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 21 - giop3.pr:249 - [D_STEP249]
		IfNotBlocked

		reached[1][21] = 1;
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
S_055_0: /* 2 */
		request_reqId = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("request_reqId", ((int)request_reqId));
#endif
		;
		goto S_057_0;
S_057_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 177: // STATE 22 - giop3.pr:263 - [lout!Request,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 178: // STATE 25 - giop3.pr:275 - [lout!CancelRequest,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 179: // STATE 26 - giop3.pr:277 - [usedReqId[reqId] = 2] (0:0:1 - 0)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]);
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 2;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 27 - giop3.pr:280 - [uout!UReply,tag,3] (0:0:0 - 0)
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
	case 181: // STATE 30 - giop3.pr:283 - [lin?Reply,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:7 - 0)
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
	case 182: // STATE 34 - giop3.pr:288 - [D_STEP288]
		IfNotBlocked

		reached[1][34] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_066_0: /* 2 */
		((P1 *)this)->reqId = ((int)((P1 *)this)->msg.mhdr.request_id);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
S_067_0: /* 2 */
		spin_assert((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])!=0), "(usedReqId[reqId]!=0)", II, tt, t);
S_068_0: /* 2 */
		reply_reqId = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("reply_reqId", ((int)reply_reqId));
#endif
		;
		goto S_090_0;
S_090_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 183: // STATE 35 - giop3.pr:296 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 36 - giop3.pr:300 - [((msg.mhdr.reply_status==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((int)((P1 *)this)->msg.mhdr.reply_status)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 38 - giop3.pr:305 - [D_STEP305]
		IfNotBlocked

		reached[1][38] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_072_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = ((int)((P1 *)this)->msg.mhdr.forward_port);
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
		goto S_074_0;
S_074_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 186: // STATE 39 - giop3.pr:309 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 187: // STATE 41 - giop3.pr:314 - [uout!UReply,tags[reqId],msg.mhdr.reply_status] (0:0:0 - 0)
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
	case 188: // STATE 46 - giop3.pr:317 - [D_STEP317]
		IfNotBlocked

		reached[1][46] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_077_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_078_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_079_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_080_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_083_0;
S_083_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 189: // STATE 49 - giop3.pr:327 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 54 - giop3.pr:329 - [D_STEP329]
		IfNotBlocked

		reached[1][54] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_085_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_086_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_087_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_088_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_091_0;
S_091_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 191: // STATE 57 - giop3.pr:338 - [lin?CloseConnection,svrPort,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:6 - 0)
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
	case 192: // STATE 58 - giop3.pr:347 - [reqId = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = 0;
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 59 - giop3.pr:349 - [((reqId==4))] (0:0:1 - 0)
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
	case 194: // STATE 61 - giop3.pr:352 - [((reqId!=4))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][61] = 1;
		if (!((((int)((P1 *)this)->reqId)!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 62 - giop3.pr:354 - [((objRefs[reqId].port==svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)==((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 63 - giop3.pr:357 - [((usedReqId[reqId]==1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 67 - giop3.pr:364 - [D_STEP364]
		IfNotBlocked

		reached[1][67] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_099_0: /* 2 */
		((P1 *)this)->msg.mhdr.request_id = ((int)((P1 *)this)->reqId);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.request_id", ((int)((P1 *)this)->msg.mhdr.request_id));
#endif
		;
S_100_0: /* 2 */
		((P1 *)this)->msg.mhdr.object_key = ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.object_key", ((int)((P1 *)this)->msg.mhdr.object_key));
#endif
		;
S_101_0: /* 2 */
		((P1 *)this)->msg.mhdr.tag = ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]);
#ifdef VAR_RANGES
		logval("GIOPClient:msg.mhdr.tag", ((int)((P1 *)this)->msg.mhdr.tag));
#endif
		;
		goto S_103_0;
S_103_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 198: // STATE 68 - giop3.pr:369 - [lout!Request,objRefs[reqId].port,msg.mhdr.request_id,msg.mhdr.object_key,msg.mhdr.reply_status,msg.mhdr.forward_port,msg.mhdr.tag] (0:0:0 - 0)
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
	case 199: // STATE 69 - giop3.pr:372 - [((usedReqId[reqId]==2))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 74 - giop3.pr:376 - [D_STEP376]
		IfNotBlocked

		reached[1][74] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_105_0: /* 2 */
		now.usedReqId[ Index(((P1 *)this)->reqId, 4) ] = 0;
#ifdef VAR_RANGES
		logval("usedReqId[GIOPClient:reqId]", ((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_106_0: /* 2 */
		((P1 *)this)->tags[ Index(((P1 *)this)->reqId, 4) ] = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:tags[GIOPClient:reqId]", ((int)((P1 *)this)->tags[ Index(((int)((P1 *)this)->reqId), 4) ]));
#endif
		;
S_107_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].port = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].port", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port));
#endif
		;
S_108_0: /* 2 */
		((P1 *)this)->objRefs[ Index(((P1 *)this)->reqId, 4) ].objKey = 255;
#ifdef VAR_RANGES
		logval("GIOPClient:objRefs[GIOPClient:reqId].objKey", ((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].objKey));
#endif
		;
		goto S_112_0;
S_112_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 201: // STATE 75 - giop3.pr:383 - [((usedReqId[reqId]==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((((int)now.usedReqId[ Index(((int)((P1 *)this)->reqId), 4) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 78 - giop3.pr:388 - [((objRefs[reqId].port!=svrPort))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((((int)((P1 *)this)->objRefs[ Index(((int)((P1 *)this)->reqId), 4) ].port)!=((int)((P1 *)this)->svrPort))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 81 - giop3.pr:391 - [reqId = (reqId+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->reqId);
		((P1 *)this)->reqId = (((int)((P1 *)this)->reqId)+1);
#ifdef VAR_RANGES
		logval("GIOPClient:reqId", ((int)((P1 *)this)->reqId));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 88 - giop3.pr:396 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][88] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 205: // STATE 1 - giop3.pr:146 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 2 - giop3.pr:148 - [((i<2))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->i)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 3 - giop3.pr:149 - [((gPublished[i]!=255))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ])!=255)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 4 - giop3.pr:150 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 5 - giop3.pr:151 - [((i==2))] (0:0:1 - 0)
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
	case 210: // STATE 10 - giop3.pr:154 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 12 - giop3.pr:162 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 13 - giop3.pr:164 - [((i<=(2-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)((P0 *)this)->i)<=(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 14 - giop3.pr:165 - [objref.objKey = i] (0:0:1 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->objref.objKey);
		((P0 *)this)->objref.objKey = ((int)((P0 *)this)->i);
#ifdef VAR_RANGES
		logval("User:objref.objKey", ((int)((P0 *)this)->objref.objKey));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 15 - giop3.pr:166 - [objref.port = gPublished[i]] (0:0:1 - 0)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->objref.port);
		((P0 *)this)->objref.port = ((int)now.gPublished[ Index(((int)((P0 *)this)->i), 2) ]);
#ifdef VAR_RANGES
		logval("User:objref.port", ((int)((P0 *)this)->objref.port));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 17 - giop3.pr:168 - [((i<(2-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)((P0 *)this)->i)<(2-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 18 - giop3.pr:169 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = (((int)((P0 *)this)->i)+1);
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 22 - giop3.pr:171 - [i = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->i);
		((P0 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("User:i", ((int)((P0 *)this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 24 - giop3.pr:175 - [lout!URequest,tag,objref.objKey,objref.port] (0:0:0 - 0)
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
	case 219: // STATE 25 - giop3.pr:182 - [lin?UReply,eval(tag),status] (0:0:2 - 0)
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
	case 220: // STATE 26 - giop3.pr:188 - [((status==1))] (0:0:1 - 0)
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
	case 221: // STATE 27 - giop3.pr:190 - [printf('Request satisfied\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][27] = 1;
		Printf("Request satisfied\n");
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 28 - giop3.pr:192 - [((status==2))] (0:0:1 - 0)
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
	case 223: // STATE 29 - giop3.pr:194 - [printf('Request failed: user exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("Request failed: user exception\n");
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 30 - giop3.pr:196 - [((status==3))] (0:0:1 - 0)
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
	case 225: // STATE 31 - giop3.pr:198 - [printf('Request failed: system exception\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("Request failed: system exception\n");
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 32 - giop3.pr:200 - [((status==5))] (0:0:1 - 0)
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
	case 227: // STATE 33 - giop3.pr:201 - [printf('Request failed: object does not exist\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][33] = 1;
		Printf("Request failed: object does not exist\n");
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 36 - giop3.pr:203 - [-end-] (0:0:0 - 0)
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

