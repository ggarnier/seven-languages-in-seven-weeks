Builder := Object clone
Builder level := 0
Builder forward := method(
  indentation := "  " repeated(self level)
  self level = self level + 1
  writeln(indentation, "<", call message name, ">")

  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(indentation, "  ", content))
  )

  writeln(indentation, "</", call message name, ">")
  self level = self level - 1
)

Builder ul(
  li("Io"),
  li("Lua"),
  li("JavaScript")
)
