-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
    PackedList = pack(List),
    encode_modified_packed(PackedList).

pack([]) -> [];
pack([H | T]) -> pack(T, [H], []).

pack([], CurrentGroup, Result) -> lists:reverse([CurrentGroup | Result]);
pack([H | T], [H | Rest] = CurrentGroup, Result) ->
    pack(T, [H | CurrentGroup], Result);
pack([H | T], CurrentGroup, Result) ->
    pack(T, [H], [CurrentGroup | Result]).

encode_modified_packed([]) -> [];
encode_modified_packed([[H | T] | Rest]) when length([H | T]) > 1 ->
    [{length([H | T]), H} | encode_modified_packed(Rest)];
encode_modified_packed([[H] | Rest]) -> 
    [H | encode_modified_packed(Rest)].
