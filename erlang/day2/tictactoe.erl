-module(tictactoe).
-export([check/1]).

check([P, P, P, _, _, _, _, _, _]) -> P;
check([_, _, _, P, P, P, _, _, _]) -> P;
check([_, _, _, _, _, _, P, P, P]) -> P;
check([P, _, _, P, _, _, P, _, _]) -> P;
check([_, P, _, _, P, _, _, P, _]) -> P;
check([_, _, P, _, _, P, _, _, P]) -> P;
check([P, _, _, _, P, _, _, _, P]) -> P;
check([_, _, P, _, P, _, P, _, _]) -> P;
check([v | _]) -> no_winner;
check([_ | T]) -> check(T);
check(_) -> cat.
