-module(erlfmt_macro).

-export([foo/0]).

-define(CATCH, C:E:S).

foo() ->
    try
        bar()
    catch
        ?CATCH ->
            io:format("~p:~p:~p", [C, E, S])
    end.

bar() ->
    1 = 2.
