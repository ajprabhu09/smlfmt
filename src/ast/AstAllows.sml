(** Copyright (c) 2023 Sam Westrick
  *
  * See the file LICENSE for details.
  *)

structure AstAllows:
sig
  type t
  val make: {topExp: bool, optBar: bool, recordPun: bool} -> t
  val topExp: t -> bool
  val optBar: t -> bool
  val recordPun: t -> bool
end =
struct
  datatype t = T of {topExp: bool, optBar: bool, recordPun: bool}
  fun make x = T x
  fun topExp (T x) = #topExp x
  fun optBar (T x) = #optBar x
  fun recordPun (T x) = #recordPun x
end