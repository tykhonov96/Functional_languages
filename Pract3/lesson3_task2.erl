-module(lesson3_task2).
-export([words/1]).

words(BinText) ->

    re:split(BinText, <<"\\s+">>, [{return, binary}, trim]).
