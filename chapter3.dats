#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

fn square(x:double):double = x * x

val sq = lam (x:double):double => x * x

fun sum1 (n:int):int = if n>=1 then sum1 (n-1) + n else 0

typedef int4 = (int,int,int,int)

val theCoins = (1,5,10,25):int4

fun coin_get (n:int):int = (if n = 0 then theCoins.0
    else if n = 1 then theCoins.1
    else if n = 2 then theCoins.2
    else if n = 3 then theCoins.3
    else ~1)

fun coin_change (sum:int):int = let
    fun aux(sum:int,n:int):int =
        if sum > 0 then
            (if n >= 0 then aux(sum,n-1) + aux(sum-coin_get(n),n) else 0)
            else (if sum < 0 then 0 else 1)
    in
        aux (sum,3)
    end

#define S 3

fun P (n:int):int = if n > 0 then 1 + Q(n-1) else 1
and Q (n:int):int = if n > 0 then Q(n-1) + n * P(n) else 0

fnx isevn (n: int): bool = if n > 0 then isodd (n-1) else true
and isodd (n: int): bool = if n > 0 then isevn (n-1) else false

fun sum (n:int):int = let
    fun loop(i:int,res:int):<cloref1>int =
        if i <= n then loop(i+1,res+1) else res
    in
        loop(1,0)
    end

fun addx(x:int):int -<cloref1> int  = lam y => x + y

val plus1 = print(addx(1)(2))

implement main0 () = ()