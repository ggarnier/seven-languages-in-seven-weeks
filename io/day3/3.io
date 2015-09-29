OperatorTable addAssignOperator(":", "atPutValue")
curlyBrackets := method(

  #r := Map clone
  #call message arguments foreach(arg,
#    r doMessage(arg)
#  )
#  r

  return "author=\"Tate\""
)

#Map atPutValue := method(
#  self atPut(
#    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
#    call evalArgAt(1) asMutable removePrefix("\"") removeSuffix("\"")
#  )
#)


Builder := Object clone
Builder level := 0
Builder forward := method(
  indentation := "  " repeated(self level)
  self level = self level + 1

  arguments := call message arguments
  firstArg := self doMessage(arguments at(0))
  attrs := ""
  if(firstArg type == "Map",
    arguments remove(arguments at(0))
    attrs = " #{firstArg}" interpolate
  )

  writeln(indentation, "<", call message name, attrs, ">")

  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(indentation, "  ", content))
  )

  writeln(indentation, "</", call message name, ">")
  self level = self level - 1
)

Builder ul(
  {"author": "Tate"},
  li("Io"),
  li("Lua"),
  li("JavaScript")
)
