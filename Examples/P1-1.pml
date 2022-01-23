byte pos = 0;
bool tokenA = 1;
bool tokenB = 0;
bool tokenC = 0;
bool tokenD = 0;

/* ltl p1 {[] (tokenA + tokenB + tokenC + tokenD <= 1)} */

/* ltl p2 {
	([]<> (tokenA == 1)) ||
	([]<> (tokenB == 1)) ||
	([]<> (tokenC == 1)) ||
	([]<> (tokenC == 1))
} */

ltl p3 {
	([]<> (tokenA == 1)) &&
	([]<> (tokenB == 1)) &&
	([]<> (tokenC == 1)) &&
	([]<> (tokenC == 1))
}



proctype A()
{
	do
	:: atomic { (pos == 0) -> printf("pos is %d\n", pos); pos = 1; tokenA = 0; tokenB = 1 }
	:: atomic { (pos == 0) -> printf("pos is %d\n", pos); pos = 3; tokenA = 0; tokenD = 1 }
	od
}

proctype B()
{
	do
	:: atomic { (pos == 1) -> printf("pos is %d\n", pos); pos = 2; tokenB = 0; tokenC = 1 }
	:: atomic { (pos == 1) -> printf("pos is %d\n", pos); pos = 0; tokenB = 0; tokenA = 1 }
	od
}

proctype C()
{
	do
	:: atomic { (pos == 2) -> printf("pos is %d\n", pos); pos = 3; tokenC = 0; tokenD = 1 }
	:: atomic { (pos == 2) -> printf("pos is %d\n", pos); pos = 1; tokenC = 0; tokenB = 1 }
	od
}

proctype D()
{
	do
	:: atomic { (pos == 3) -> printf("pos is %d\n", pos); pos = 0; tokenD = 0; tokenA = 1 }
	:: atomic { (pos == 3) -> printf("pos is %d\n", pos); pos = 2; tokenD = 0; tokenC = 1 }
	od
}

init {
	atomic {
		run A();
		run B();
		run C();
		run D();
	}
	
}
