min([X], X).
min([X, Y | Tail], Result) :-
  X =< Y,
  min([X | Tail], Result).
min([X, Y | Tail], Result) :-
  X > Y,
  min([Y | Tail], Result).
