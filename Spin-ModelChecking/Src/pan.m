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

		 /* CLAIM p1 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(((((tokenA+tokenB)+tokenC)+tokenD)==1)))] (6:0:0 - 1)
		
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
		reached[5][1] = 1;
		if (!( !(((((((int)now.tokenA)+((int)now.tokenB))+((int)now.tokenC))+((int)now.tokenD))==1))))
			continue;
		/* merge: assert(!(!(((((tokenA+tokenB)+tokenC)+tokenD)==1))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(((((((int)now.tokenA)+((int)now.tokenB))+((int)now.tokenC))+((int)now.tokenD))==1))), " !( !(((((tokenA+tokenB)+tokenC)+tokenD)==1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - ../Examples/P1-1.pml:44 - [(run A())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - ../Examples/P1-1.pml:45 - [(run B())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - ../Examples/P1-1.pml:46 - [(run C())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - ../Examples/P1-1.pml:47 - [(run D())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - ../Examples/P1-1.pml:50 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC D */
	case 10: // STATE 1 - ../Examples/P1-1.pml:37 - [((pos==3))] (13:0:3 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!((((int)now.pos)==3)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 2, 13) */
		reached[3][2] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 0(13, 3, 13) */
		reached[3][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 0;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenD = 0(13, 4, 13) */
		reached[3][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenD);
		now.tokenD = 0;
#ifdef VAR_RANGES
		logval("tokenD", ((int)now.tokenD));
#endif
		;
		/* merge: tokenA = 1(13, 5, 13) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenA);
		now.tokenA = 1;
#ifdef VAR_RANGES
		logval("tokenA", ((int)now.tokenA));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[3][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 11: // STATE 7 - ../Examples/P1-1.pml:38 - [((pos==3))] (13:0:3 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!((((int)now.pos)==3)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 8, 13) */
		reached[3][8] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 2(13, 9, 13) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 2;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenD = 0(13, 10, 13) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenD);
		now.tokenD = 0;
#ifdef VAR_RANGES
		logval("tokenD", ((int)now.tokenD));
#endif
		;
		/* merge: tokenC = 1(13, 11, 13) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenC);
		now.tokenC = 1;
#ifdef VAR_RANGES
		logval("tokenC", ((int)now.tokenC));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[3][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 12: // STATE 16 - ../Examples/P1-1.pml:40 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC C */
	case 13: // STATE 1 - ../Examples/P1-1.pml:29 - [((pos==2))] (13:0:3 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((((int)now.pos)==2)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 2, 13) */
		reached[2][2] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 3(13, 3, 13) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 3;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenC = 0(13, 4, 13) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenC);
		now.tokenC = 0;
#ifdef VAR_RANGES
		logval("tokenC", ((int)now.tokenC));
#endif
		;
		/* merge: tokenD = 1(13, 5, 13) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenD);
		now.tokenD = 1;
#ifdef VAR_RANGES
		logval("tokenD", ((int)now.tokenD));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[2][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 14: // STATE 7 - ../Examples/P1-1.pml:30 - [((pos==2))] (13:0:3 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!((((int)now.pos)==2)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 8, 13) */
		reached[2][8] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 1(13, 9, 13) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 1;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenC = 0(13, 10, 13) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenC);
		now.tokenC = 0;
#ifdef VAR_RANGES
		logval("tokenC", ((int)now.tokenC));
#endif
		;
		/* merge: tokenB = 1(13, 11, 13) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenB);
		now.tokenB = 1;
#ifdef VAR_RANGES
		logval("tokenB", ((int)now.tokenB));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[2][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 15: // STATE 16 - ../Examples/P1-1.pml:32 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B */
	case 16: // STATE 1 - ../Examples/P1-1.pml:21 - [((pos==1))] (13:0:3 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.pos)==1)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 2, 13) */
		reached[1][2] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 2(13, 3, 13) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 2;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenB = 0(13, 4, 13) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenB);
		now.tokenB = 0;
#ifdef VAR_RANGES
		logval("tokenB", ((int)now.tokenB));
#endif
		;
		/* merge: tokenC = 1(13, 5, 13) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenC);
		now.tokenC = 1;
#ifdef VAR_RANGES
		logval("tokenC", ((int)now.tokenC));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[1][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 17: // STATE 7 - ../Examples/P1-1.pml:22 - [((pos==1))] (13:0:3 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((int)now.pos)==1)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 8, 13) */
		reached[1][8] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 0(13, 9, 13) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 0;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenB = 0(13, 10, 13) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenB);
		now.tokenB = 0;
#ifdef VAR_RANGES
		logval("tokenB", ((int)now.tokenB));
#endif
		;
		/* merge: tokenA = 1(13, 11, 13) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenA);
		now.tokenA = 1;
#ifdef VAR_RANGES
		logval("tokenA", ((int)now.tokenA));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[1][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 18: // STATE 16 - ../Examples/P1-1.pml:24 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC A */
	case 19: // STATE 1 - ../Examples/P1-1.pml:13 - [((pos==0))] (13:0:3 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.pos)==0)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 2, 13) */
		reached[0][2] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 1(13, 3, 13) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 1;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenA = 0(13, 4, 13) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenA);
		now.tokenA = 0;
#ifdef VAR_RANGES
		logval("tokenA", ((int)now.tokenA));
#endif
		;
		/* merge: tokenB = 1(13, 5, 13) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenB);
		now.tokenB = 1;
#ifdef VAR_RANGES
		logval("tokenB", ((int)now.tokenB));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[0][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 20: // STATE 7 - ../Examples/P1-1.pml:14 - [((pos==0))] (13:0:3 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)now.pos)==0)))
			continue;
		/* merge: printf('pos is %d\\n',pos)(13, 8, 13) */
		reached[0][8] = 1;
		Printf("pos is %d\n", ((int)now.pos));
		/* merge: pos = 3(13, 9, 13) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pos);
		now.pos = 3;
#ifdef VAR_RANGES
		logval("pos", ((int)now.pos));
#endif
		;
		/* merge: tokenA = 0(13, 10, 13) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tokenA);
		now.tokenA = 0;
#ifdef VAR_RANGES
		logval("tokenA", ((int)now.tokenA));
#endif
		;
		/* merge: tokenD = 1(13, 11, 13) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tokenD);
		now.tokenD = 1;
#ifdef VAR_RANGES
		logval("tokenD", ((int)now.tokenD));
#endif
		;
		/* merge: .(goto)(0, 14, 13) */
		reached[0][14] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 21: // STATE 16 - ../Examples/P1-1.pml:16 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
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

