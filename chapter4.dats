#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

datatype intopt =
    | intopt_none of ()
    | intopt_some of (int)

val s = intopt_some(10)

fun get_int (x:intopt):int =
    case+ x of
    | intopt_none () => 0
    | intopt_some n => n

val _ = print(get_int(s))

datatype clist = c_nil of () | c_cons of (char,clist)

val _ = c_cons('a',c_cons('b',c_nil ()))

fun c_last (cs:clist):char =
    let
        val- c_cons (c,cs1) = cs in 
            case+ cs1 of
            | c_nil () => c
            | c_cons _ => c_last (cs1)
        end

implement main0 () = ()