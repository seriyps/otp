-module(main).
-export([
         main/0,
         other/0,
        ]).
%% TODO: typed records
-type other_res() :: {x,
                      y,
                      }.
-record(rec,
        {
         a = [],
         b %% :: #{x => x,
           %%      y := y,
           %%     }
        ,
         c %% :: {x,
           %%     y,
           %%    }
        ,
         d,
        }).

%% -spec main() -> #rec{
%%                    a :: [],
%%                    b :: #{x => x,
%%                           y => y,
%%                          },
%%                    c :: {x,
%%                          y,
%%                          },
%%                    d :: [],
%%                   }.
main() ->
 #rec{
    a = [x,
         y,
         z,
        ],
    b = #{x=>x,
          y=>y,
         },
    c = {x,
         y,
        },
    d = [x,
         y,
        ],
   }.

-spec other() -> other_res().
other() ->
    {x, y, }.
