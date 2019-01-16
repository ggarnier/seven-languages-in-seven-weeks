-module(shopping).
-export([list/1]).

list([{Item, Qty, Price} | T]) -> [{Item, Qty*Price} | list(T)];
list([]) -> [].
