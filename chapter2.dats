#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

val x = 1 + 2
val P = 3.14 and radius = 10.0

//box化されたものを使うときは -DATS_MEMALLOC_LIBC
val xyz = '( 'A', 1, 2.0 )
val x = xyz.0 and y = xyz.1 and z = xyz.2

val u = (1,2,3)
val uu = u.1

typedef point2D = @{x = double,y = double}

val theOrigin = @{x = 0.0,y = 0.0} : point2D

val theO_x = theOrigin.x and theO_x = theOrigin.y

val @{ x= theOrigin_x, y= theOrigin_y } = theOrigin

val @{x = u,...} = theOrigin

typedef point2Db = '{x = double,y = double}

val t = '{x = 1.2,y = 2.3} : point2Db

val '{x = u,...} = t

val _ = print(u)

val z = begin
    print 'H';print 'E';
end

val _ =
    let
        val '{x = m,...} = t
    in
        print(m)
    end

implement main0 () = ()