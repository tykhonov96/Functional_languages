-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([{N, Element} | T]) -> 
    lists:duplicate(N, Element) ++ decode_modified(T);  
decode_modified([Element | T]) -> 
    [Element | decode_modified(T)].  