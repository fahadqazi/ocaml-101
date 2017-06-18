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

let rec gcd2 a b =
  match b with
    0 -> a
  | _ -> gcd b (a mod b);;

gcd 42 14;;

(* Exercises *)

(* 1. Rewrite the not function from the previous chapter in pattern matching style.  *)
let not x =
  if x then false else true;;

let not x =
  match x with
    false -> true
  | true -> false;;

(* 2. Use pattern matching to write a recursive function which, given a 
positive integer n, returns the sum of all the integers from 1 to n. *)

let rec sum n =
  if n = 1 then 1 else n + sum (n - 1);;

let rec sum n =
  match n with
    1 -> 1
  | _ -> n + sum (n-1);;

(* 3. Use pattern matching to write a function which, given two numbers x 
and n, computes x** n *)

let rec power x n =
  if n = 0 then 1 else
  if n = 1 then x else
    x * power x (n-1);;

  
let rec powers x n =
  match n with
    0 -> 1
  | 1 -> x
  | _ -> x * powers n x-1;;

(* 5. What does match 1 + 1 with 2 -> match 2 + 2 with 3 -> 4 | 4 -> 5 evaluate to? *)

(* match 1 + 2 with *)
(*   2 -> (match 2 + 2 with *)
(*       3 -> 4 *)
(*     | 4 -> 5 ) *)


(* 6. There is a special pattern x..y to denote continuous ranges of characters,
 for example 'a'..'z' will match all lowercase letters. Write functions islower
   and isupper, each of type char → bool, to decide on the case of a given letter *)

let isLower char =
  match char with
  'a'..'z' -> true
  | _ -> false

let isUpper char =
  match char with
  'A'..'Z' -> true
  | _ -> false
