let rec factorial a =
  if a = 1 then 1 else
    a * factorial(a-1);;

let rec fact a =
  match a with
    1 -> 1
  | _ -> a * fact(a-1);;

let rec adder a =
  if a = 1 then 1 else
    a + adder(a-1);;
adder 5;;

