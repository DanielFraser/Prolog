%Problem 1
where(joe, toy).
headDepart(sam,toy).
report_to(Employee,Head) :- where(Employee,Depart), headDepart(Head,Depart).
less_than(Employee,Head) :- where(Employee,Depart), headDepart(Head,Depart).

%Problem 2
fibHelper(S1,S2,Nth,N,F) :- 
			S3 is S1+ S2,
			(S3 =:= F, Nth =:= N ->
			true; (S3 > F ->
			fail; Nth2 is Nth+1,
			fibHelper(S2,S3,Nth2,N,F))).
			
fib(0,0).
fib(1,1).
fib(N,F) :- fibHelper(0,1,2,N,F).

%Problem 3
doubleHelper([Head|Tail],Head,Tail).
double([],[]).
double(C,D) :- 	
		doublehelper(C,HeadC,TailC),
		doublehelper(D,HeadD,TailD),
		HeadC = HeadD,
		doublehelper(TailD,HeadD2,TailD2),
		HeadC = HeadD2,
		double(TailC,TailD2).

%Problem 4
without0([],[]).
without0(A,B) :- 
		doublehelper(A, Ha, Ta),
		(Ha \= 0 ->
		%then
		doublehelper(B, Hb, Tb),
		Ha = Hb,
		without0(Ta,Tb);
		%else
		without0(Ta,B)).


		
		
