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
(* val total: 'a list -> int = <fun> *)
let rec total l =
  match l with
    [] -> 0
  | h::t -> h + total t;;
