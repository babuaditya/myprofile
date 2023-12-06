nqueen(N,Qs):-
    range(1,N,Rows),
    permutation(Rows,Qs),
    safe(Qs).
range(X,X,[X]).
range(X,Y,[X|Rest]):-
    X<Y,
    X1 is Y+1,
    range(X1,Y,Rest).
permutation([],[]).
permutation(List,[X|Rest]):-
    select(X,List,Tail),
    permutation(Tails,Rest).
safe([]).
safe([Q|Qs]):-
    safe(Qs,Q,1).
   .
safe([],_,_).
safe([Q|Qs],Q0,D0):-
    Q0-Q=\=D0,
    Q-Q0=\=D0,
    D1 is D0+1,
    safe(Qs,Q0,D1).
