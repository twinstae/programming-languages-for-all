---
title: Ocaml
description: A guide in my new Starlight docs site.
sidebar:
  order: 14
---

```ocaml
print_endline "Hello, World!";;
```

```ocaml
let rec factorial n =
  match n with
  | 0 -> 1
  | 1 -> 1
  | _ -> n * factorial (n - 1)
;;

print_string "Enter a number: ";
flush stdout;

try
  let number = read_int () in
  if number < 0 then
    raise (Failure "Invalid input. Please enter a non-negative integer.")
  else
    let result = factorial number in
    print_int result;
    print_newline ()
with
| Failure msg -> print_endline msg
| _ -> print_endline "Invalid input. Please enter a valid non-negative integer."

```
