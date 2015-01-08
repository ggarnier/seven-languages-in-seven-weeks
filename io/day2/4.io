List myAverage := method(
  avg := 0
  self foreach(k, v,
    if(v type != "Number",
      Exception raise("not a number"),
      avg = avg + v
    )
  )
  avg / self size
)

list(1,2,3,4,5,6,7,8) myAverage println
list() myAverage println
list("string") myAverage println
