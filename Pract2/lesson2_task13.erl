-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];
decode([{N, Element} | T]) -> 
    lists:duplicate(N, Element) ++ decode(T).
