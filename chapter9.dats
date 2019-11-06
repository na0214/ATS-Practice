#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

sortdef nat2 = {a:int | 0 <= a;a < 2}
sortdef nat2_ = {a:int | a == 0 || a == 1}

(*fun fact{n:nat}(x:int(n)):[r:nat] int r =
    if x > 0 then x * fact (x - 1) else 1*)

// {n:nat} int (n) -> [r:nat] int (r)
// nについてn > 0 -> n - 1 >= 0
// nとr1についてn > 0 -> n * r1 >= 0 証明を明示的に構築する必要がある
// nについて 1 >= 0

fun string_length{n:nat}(str:string(n)):size_t(n) =
    let
        fun loop {i:nat | i <= n} .<n-i>. (str:string(n),i:size_t(i)):size_t(n) =
            if string_isnot_atend(str,i)
                then loop (str,succ(i))
                else i
    in
        loop(str,i2sz(0))
    end

//val _ = print(sz2i(string_length("abc")))

typedef sizeLt (n:int) = [i:nat | i < n] size_t(i)

fun string_find {n:nat}(str:string n,c0:char):Option(sizeLt n) =
    let
        typedef res = sizeLt(n)
        fun loop{i:nat | i <= n}(str:string(n),c0:char,i:size_t(i)):Option res =
            (
                if string_isnot_atend(str,i) then
                    if (c0 = str[i]) then Some{res}(i) else loop(str,c0,succ(i))
                else None ()
            )
    in
        loop(str,c0,i2sz(0))
    end

fun{a:t@ype}bsearch_arr{n:nat}(A:arrayref(a,n),n:int n,x0:a,cmp:(a,a) -> int):int =
    let
        fun loop{i,j:int | 0 <= i;i <= j + 1;j + 1 <= n}(A:arrayref(a,n),l:int i,u:int j):<cloref1> int =
        (
            if l <= y then
                let
                    val m = l + half(u-l)
                    val x = A[m]
                    val sgn = cmp(x0,x)
                in
                    if sgn >= 0 then loop(A,m+1,u) else loop(A,l,m-1)
                end else u
        )
    in
        loop(A,0,n-1)
    end

fun fact{n:nat} .<n>. (x:int(n)):int = if x > 0 then x * fact(x-1) else 1

implement main0 () = ()