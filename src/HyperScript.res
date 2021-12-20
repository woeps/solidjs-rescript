type t

module Props = {
  type t
  external ofJst: Js.t<'a> => t = "%identity"
  external ofUnit: unit => t = "%identity"

  @obj
  external make: (~class: string=?, ~id: string=?, ~onClick: unit => unit=?, unit) => t = ""
  let none = ofUnit()
}

@module("solid-js/h")
external h: (string, Props.t, unit => t) => t = "default"

@module("solid-js/h")
external div: (@as("div") _, Props.t, unit => t) => t = "default"

@module("solid-js/h")
external button: (@as("button") _, Props.t, unit => t) => t = "default"

external text: string => t = "%identity"
external children: array<unit => t> => t = "%identity"
