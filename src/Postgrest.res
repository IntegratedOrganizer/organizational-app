module PostgrestFilterBuilder = {
  type t

  @send
  external eq: (t, string, string) => t = "eq"
}

module PostgrestQueryBuilder = {
  type t

  @send
  external select: (t, string) => PostgrestFilterBuilder.t = "select"
}

module PostgrestClient = {
  type t

  @module("@supabase/supabase-js")
  external postgrestClient: string => t = "PostgrestClient"

  @send
  external from: (t, string) => PostgrestQueryBuilder.t = "from"

  @send
  external rpc: (t, string) => PostgrestFilterBuilder.t = "rpc"
}
