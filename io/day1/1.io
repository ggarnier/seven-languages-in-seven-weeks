1 + "one" # Exception: argument 0 to method '+' must be a Number, not a 'Sequence'

# defining + slot in Sequence prototype
Sequence + := method("plus" println)
1 + "one" # Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
