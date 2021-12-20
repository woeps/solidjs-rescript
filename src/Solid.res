@module("solid-js/web")
external render: (unit => HyperScript.t, Document.Node.t) => unit = "render"

@module("solid-js")
external createSignal: 'a => ((. unit) => 'a, (. 'a => 'a) => unit) = "createSignal"

@module("solid-js")
external onCleanup: (unit => unit) => unit = "onCleanup"
