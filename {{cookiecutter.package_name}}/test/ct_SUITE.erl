-module(ct_SUITE).
-include_lib("eunit/include/eunit.hrl").
-compile(export_all).

all() ->
    [
        example_ct_test
    ].

example_ct_test(_Config) ->
    ?assertEqual(true, true).

init_per_suite(Config) ->
    Config.

end_per_suite(_Config) ->
    ok.

init_per_testcase(_TestCase, Config) ->
    Config.

end_per_testcase(_TestCase, _Config) ->
    ok.
