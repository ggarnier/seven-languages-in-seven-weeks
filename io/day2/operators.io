OperatorTable addOperator("xor", 11)
true xor := method(bool, bool not)
false xor := method(bool, bool)

(true xor true) println
(true xor false) println
(false xor true) println
(false xor false) println
