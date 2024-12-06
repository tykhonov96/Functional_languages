-module(lesson2_task07).
-export([flatten/1]).

flatten([]) -> [];                             
flatten([Head | Tail]) -> 
    flatten(Head) ++ flatten(Tail);           
flatten(Element) -> [Element].                
