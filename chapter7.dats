#include "share/atspre_staload.hats"
#include "share/atspre_define.hats"

extern fun fact : (int) -> int

implement fact (x) = if x > 0 then x * fact (x - 1) else 1

extern fun swap_boxed{a,b:type} (xy:(a,b)):(b,a)

implement swap_boxed (xy) = (xy.1,xy.0)

extern fun{a:t@ype} eq_e_e (x:a,y:a):bool

implement eq_e_e<int>(x,y) = g0int_eq(x,y)
implement eq_e_e<double>(x,y) = g0float_eq(x,y)

typedef Cint = $extype"int"

macdef NULL = $extval(ptr,"0")

implement main0 () = ()