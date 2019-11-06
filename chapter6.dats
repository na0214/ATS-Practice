#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

exception FatalError0 of ()
exception FatalError1 of (string)

exception DivisionByZero of ()
fun divexn (x:int,y:int):int =
    if y != 0 then x / y else $raise DivisionByZero ()

val intr = ref<int>(0)
val () = !intr := !intr + 1

val _ =
    let
        val arr = arrszref_make_elt<int>(g0int2uint_int_size(10),0)
    in
        print(arrszref_get_size(arr));
    end

implement main0 () =
    {
        val out = fileref_open_exn("hello.txt",file_mode_w)
        val () = fprint_string(out,"Hello,world!\n")
        val () = fileref_close(out)
    }