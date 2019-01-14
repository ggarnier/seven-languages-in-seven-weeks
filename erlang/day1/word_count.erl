-module(word_count).
-export([words/1, counter/1]).

counter([]) -> 0;
counter([_ | T]) -> 1 + counter(T).

words([]) -> 0;
words(Str) -> word_count:counter(string:lexemes(Str, " ")).
