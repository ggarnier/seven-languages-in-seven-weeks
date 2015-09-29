curlyBrackets := method(
  return call message() arguments() map(
    arg,
    self doMessage(arg)
  )
)

names := {
  "Alice",
  "Bob"
}

names println
