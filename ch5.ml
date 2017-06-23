let rec insert x l =
  match l with
    [] -> [x]
  | h::t ->
     if x<=h
     then x::h::t
     else h:: insert x t;;

let rec sort l =
  match l with
    [] -> []
  | h::t -> insert h (sort t);;

sort [3; 4; 2; 1; 6; 8; 0];;
