	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p1 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC D */

	case 10: // STATE 5
		;
		now.tokenA = trpt->bup.ovals[2];
		now.tokenD = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: // STATE 11
		;
		now.tokenC = trpt->bup.ovals[2];
		now.tokenD = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 12: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC C */

	case 13: // STATE 5
		;
		now.tokenD = trpt->bup.ovals[2];
		now.tokenC = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 14: // STATE 11
		;
		now.tokenB = trpt->bup.ovals[2];
		now.tokenC = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 15: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC B */

	case 16: // STATE 5
		;
		now.tokenC = trpt->bup.ovals[2];
		now.tokenB = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 17: // STATE 11
		;
		now.tokenA = trpt->bup.ovals[2];
		now.tokenB = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 18: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC A */

	case 19: // STATE 5
		;
		now.tokenB = trpt->bup.ovals[2];
		now.tokenA = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 20: // STATE 11
		;
		now.tokenD = trpt->bup.ovals[2];
		now.tokenA = trpt->bup.ovals[1];
		now.pos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 21: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;
	}

