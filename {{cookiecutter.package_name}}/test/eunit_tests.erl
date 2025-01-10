% Run with `rebar3 eunit`
-module(eunit_tests).

-include_lib("eunit/include/eunit.hrl").

example_eunit_test() ->
    ?assertEqual(true, true).
