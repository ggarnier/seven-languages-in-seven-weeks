postOffice := Object clone
postOffice packageSender := method(call sender)
mailer := Object clone
mailer deliver := method(postOffice packageSender)
mailer deliver println # returns postOffice

postOffice messageTarget := method(call target)
postOffice messageTarget println # returns postOffice

postOffice messageArgs := method(call message arguments)
postOffice messageArgs("one", 2, :three) println

postOffice messageName := method(call message name)
postOffice messageName println


unless := method(
  (call sender doMessage(call message argAt(0))) ifFalse(
  call sender doMessage(call message argAt(1))) ifTrue(
  call sender doMessage(call message argAt(2)))
)

westley := Object clone
westley trueLove := true
princessButtercup := Object clone
westley check := method(
  princessButtercup unless(
    trueLove, ("It is false" println), ("It is true" println)
  )
)
westley check println
