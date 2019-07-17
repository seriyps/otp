-module(main2).
-export([
         main/0,
         other/0,
        ]).

-type b() :: #{a => b,
               c => d,
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

-spec main() -> #rec{
                   a :: [],
                   b :: #{x => x,
                          y => y
                         }
                    ,
                   c :: {x,
                         y,
                         },
                   d :: b(),
                  }.
main() ->
 #rec{}.

other() ->
    {x, y}.
