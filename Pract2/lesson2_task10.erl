-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
    PackedList = pack(List),
    encode_packed(PackedList).

pack([]) -> [];
pack([H | T]) -> pack(T, [H], []).

pack([], CurrentGroup, Result) -> lists:reverse([CurrentGroup | Result]);
pack([H | T], [H | Rest] = CurrentGroup, Result) ->
    pack(T, [H | CurrentGroup], Result);
pack([H | T], CurrentGroup, Result) ->
    pack(T, [H], [CurrentGroup | Result]).

encode_packed([]) -> [];
encode_packed([[H | T] | Rest]) ->
    [{length([H | T]), H} | encode_packed(Rest)].
