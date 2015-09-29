rev([], []).
rev([x], [x]).
rev([Head|Tail], Y) :-
  rev(Tail, Sub),
  append(Sub, [Head], Y).
