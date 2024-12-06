-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];                                      
pack([H | T]) -> pack(T, [H], []).                   

pack([], CurrentGroup, Result) -> lists:reverse([CurrentGroup | Result]);  
pack([H | T], [H | Rest] = CurrentGroup, Result) ->  
    pack(T, [H | CurrentGroup], Result);
pack([H | T], CurrentGroup, Result) ->               
    pack(T, [H], [CurrentGroup | Result]).
