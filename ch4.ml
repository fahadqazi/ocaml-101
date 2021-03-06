(* Lists *)
(*
 - All elements of the list must have the same type.
 - Lists in ';' separated
 - First element of the list is called HEAD and the rest of the list is the tail
*)

let list1 = [1; 2; 3];;
let list2 = [4; 6; 7];;

0 :: list1;;  (* CONS: adds a single elment 0 to beginnng of the list1*) (* [0; 1; 2; 3] *) 

let combinedList = list1 @ list2;; (* APPEND: combines the two lists*) (* [0; 1; 2; 3; 4; 6; 7] *)

(* val isNil : 'a list -> bool = <fun> *)

let isNil l =
  match l with
    [] -> true
  | _ -> false;;

(* Length of a list *)
(* val length: 'a list -> int = <fun> *)

let rec length l =
  match l with
    [] -> 0
  | h::t -> 1 + length t;;

let rec length l = 
  match l with
    [] -> 0
  | _::t -> 1 + length t;;


(* Sum of elements in a list *)
(* val total: int list -> int = <fun> *)
let rec total l =
  match l with
    [] -> 0
  | h::t -> h + total t;;

(* alternative way *)

let rec inner_length l n =
  match l with
    [] -> n
  | h::t -> inner_length t (n+1);;

inner_length [1; 2; 3; 4; 5] 0;;

(* OR we can wrap the inner_length function up in another function ...*)

let length l = inner_length l 0;;


(* odd elements out of a list *)
let rec odd_elements l =
  match l with
    [] -> []
  | [a] -> [a]
  | a::_::t -> a :: odd_elements t;;

(* another way*)
(*
- since the above functions firs two pattern matching conditions always return itself
- we can switch the conditions around and replace the first two with bellow
*)
let rec odd_elements2 l =
  match l with 
    a::_::t -> a :: odd_elements2 t
  | _ -> l;;

(* appending two lists*)
let rec append a b = 
  match a with
  [] -> b
  | h::t -> h :: append t b;;

(* reverse list*)
let rec rev l =
  match l with 
  [] -> []
  | h::t -> rev t @ [h];;

(* take & drop - not exhaustive *)
let rec take n l =
  if n = 0 then [] else
  match l with
  h::t -> h :: take (n-1) t;;

let rec drop n l = 
  if n = 0 then l else 
  match l with 
  h::t -> drop (n-1) t;;
