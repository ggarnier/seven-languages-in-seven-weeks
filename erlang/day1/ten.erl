-module(ten).
-export([countdown/0, count/1]).

count(0) -> io:format("~p~n", [0]);
count(N) ->
  io:format("~p~n", [N]),
  count(N-1).

countdown() -> ten:count(10).
