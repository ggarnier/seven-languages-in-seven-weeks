fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Result) :-
  X is N-1,
  Y is N-2,
  fibonacci(X, ResultX),
  fibonacci(Y, ResultY),
  Result is ResultX + ResultY.
