-module(keywords).
-export([extract/2]).

extract([{Keyword, Value} | _], Keyword) -> Value;
extract([_ | T], Keyword) -> extract(T, Keyword);
extract(_, _) -> "not found".
