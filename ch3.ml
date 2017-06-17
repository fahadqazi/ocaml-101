(* Pattern matching vs conditional statements *)

(* Example 1 *)
let rec factorial x =
  if x = 1 then 1 else x * factorial (x-1);;

let rec factorial x =
  match x with
    1 -> 1
  | _ -> x * factorial (x-1);;


(* Example 2 *)
let isVowel1 char =
  char = 'a' || char = 'e' || char = 'i' || char = 'o' || char = 'u'

let isVowel2 char =
  match char with
  | 'a' -> true
  | 'e' -> true
  | 'i' -> true
  | 'o' -> true
  | 'u' -> true
  | _ -> false


let isVowel3 char =
  match char with
  'a' | 'e' | 'i' | 'o' | 'u' -> true
 | _ -> false;;

factorial 5 ;;


(* Example 3 *)
(* gcd ~ greatest common divisor *)
let rec gcd a b =
  if b = 0 then a else gcd b (a mod b);;

gcd 15 9;;


