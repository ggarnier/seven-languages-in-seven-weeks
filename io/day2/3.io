array := list(list(1,2,3), list(4,5,6), list(7,8,9))
sum := 0
array flatten() foreach(k, v, sum = sum + v)
sum println
