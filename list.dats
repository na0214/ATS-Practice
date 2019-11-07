#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

fun {a:t@ype} head {n:pos} (xs:list(a,n)) : a =
    case+ xs of
    | list_cons (x,_) => x

fun {a:t@ype} tail {n:pos} .<n>. (lst:list((a,n))) : a =
    case+ lst of
    | list_cons (x,list_nil ()) => x
    | list_cons (_,xs) =>> tail<a>(xs)

val test_list_1 = list_cons(2,list_cons(3,list_nil ()))
val test_list_2 = list_cons(3,list_cons(10,list_nil()))

//val _ = print(head<int>(test_list_1))
val _ = print(tail<int>(test_list_1))

implement main0 () = ()