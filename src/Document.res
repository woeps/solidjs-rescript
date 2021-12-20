module Node = {
  type t
}

@val @scope("document") @return(nullable)
external getElementById: string => option<Node.t> = "getElementById"
