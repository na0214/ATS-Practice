#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

val x = 1 + 2
val P = 3.14 and radius = 10.0

# box化されたものを使うときは -DATS_MEMALLOC_LIBC
val xyz = '( 'A', 1, 2.0 )
val x = xyz.0 and y = xyz.1 and z = xyz.2

val u = (1,2,3)
val uu = u.1

typedef point2D = @{x = double,y = double}

val theOrigin = @{x = 0.0,y = 0.0} : point2D

implement main0 () = ()