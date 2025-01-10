%%%-------------------------------------------------------------------
%% @doc {{ cookiecutter.package_name }} public API
%% @end
%%%-------------------------------------------------------------------

-module({{ cookiecutter.package_name }}_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    {{ cookiecutter.package_name }}_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
