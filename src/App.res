let createElement = (~children as _, _unit) => {
  let (count, setCount) = Solid.createSignal(10)

  let timer = Js.Global.setInterval(() => {
    Js.log2("Hello!", count(.)) // Display the proper value 10, 11, 12, etc...
    setCount(.previousCount => previousCount + 1)
  }, 1000)

  Solid.onCleanup(() => Js.Global.clearInterval(timer))

  open HyperScript
  div(Props.none, () =>
    children([
      () => text("Counter: " ++ Belt.Int.toString(count(.))),
      () =>
        button(Props.make(~onClick=() => setCount(.previousCount => previousCount - 3), ()), () =>
          text("reduce")
        ),
    ])
  )
}
