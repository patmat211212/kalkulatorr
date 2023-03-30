%%%-------------------------------------------------------------------
%% @doc kalkulator public API
%% @end
%%%-------------------------------------------------------------------

-module(kalkulator_app).

-export([start/0]).

start() ->
    Dzialanie=io:read("Podaj numer dzialania(1.+ 2.- 3.* 4./): "), 
    {A,_}=string:to_integer(io:get_line("Podaj A:")),
    {B,_}=string:to_integer(io:get_line("Podaj B:")),
    %io:write(Dzialanie),
    if Dzialanie=={ok, 1} ->
        C=A+B;
    Dzialanie=={ok, 2} ->
        C=A-B;
    Dzialanie=={ok, 3} ->
        C=A*B;
    Dzialanie=={ok, 4} ->
        C=A/B
    end,
    io:write(C). 

    


    
    
    
