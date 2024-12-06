-module(lesson2_task08).
-export([compress/1]).

compress([]) -> [];                              
compress([H | T]) -> compress(T, H, [H]).        

compress([], _, Result) -> lists:reverse(Result); 
compress([H | T], H, Result) ->                  
    compress(T, H, Result);
compress([H | T], _, Result) ->                  
    compress(T, H, [H | Result]).
