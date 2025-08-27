-module(webdrv_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    %% Add children here as you build the app
    {ok, {{one_for_one, 3, 10}, []}}.
