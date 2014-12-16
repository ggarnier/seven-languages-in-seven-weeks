User := Object clone
User name := nil
User email := nil

u := User clone
u name = "blabla"
u email = "blabla@gmail.com"

slotName := System args at(1)

u getSlot(slotName) print
