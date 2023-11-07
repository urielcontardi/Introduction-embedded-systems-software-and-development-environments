# Main.c

|Item   |Segment    |Sub-segment    |Permissions    |Lifetime   |
|-------|---------- |---------------|---------------|-----------|
|g1     |   data    |     bss       |     RW        |  program  |
|g2     |   code    |     const     |     R         |  program  |
|g3     |   data    |     data      |     RW        |  program  |
|g4     |   data    |     bss       |     RW        |  program  |
|g5     |   data    |     data      |     RW        |  program  |
|N      |   compilation time    |     compilation time      |     compilation time        |  compilation time  |
| l1    |   register    |     none      |     RW        |  function  |
| l2    |   data    |     stack      |     RW        |  function  |
| *l2    |   data    |     heap      |     RW        |  Indefinite  |

# Misc.c
|Item   |Segment    |Sub-segment    |Permissions    |Lifetime   |
|-------|---------- |---------------|---------------|-----------|
|SOME_VALUE   |   compilation time    |     compilation time      |     compilation time        |  compilation time  |
|f1     |   data    |     stack       |     RW        |  function  |
|f2     |   data    |     bss       |     RW        |  program  |
|f3     |   data    |     stack       |     RW        |  function  |
|*f4     |   code    |     none       |     R        |  function  |