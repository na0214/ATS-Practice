#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

staload UN = "prelude/SATS/unsafe.sats"

fun{a:t@ype} list_length{n:nat} .<n>. (xs:list(a,n)):int (n) =
    case+ xs of
    | list_nil () => 0
    | list_cons (_,xs1) => 1 + list_length(xs1)

fun{a:t@ype} list_h{n:int | n > 0} (l:list(a,n)):a =
    case+ l of
    | list_cons (x,_) => x

val _ = print(list_h<int>(list_cons(3,list_cons(2,list_nil ()))))

implement main0 () = ()