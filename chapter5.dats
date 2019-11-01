#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

fun {a,b:t@ype} swap (xy:(a,b)): (b,a) = (xy.1,xy.0)

fun swap_c_i (xy:(char,int)):(int,char) = swap<char,int> (xy)

fun {a:t@ype}{b:t@ype} swap2 (xy:(a,b)):(b,a) = (xy.1,xy.0)

fun s_c_i2 (xy:(char,int)):(int,char) = swap2<char><int> (xy)

typedef cfun (t1:t@ype,t2:t@ype) = t1 -<cloref1> t2

fun {a,b,c:t@ype} compose(f:cfun(a,b),g:cfun(b,c)):<cloref1> cfun(a,c) = lam x => g(f(x))

val inc_by_1 = lam (x:int):int =<cloref> x + 1
val mul_by_2 = lam (x:int):int =<cloref> x * 2

val f_2x_1 = compose<int,int,int> (mul_by_2,inc_by_1)

fun swap2_boxed{a:type}{b:type} (xy: (a, b)): (b, a) = (xy.1, xy.0)

val AB = (box("A"),box("B"))
val BA1 = swap2_boxed(AB)

implement main0 () = print(f_2x_1(2))