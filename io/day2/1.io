"Recursive version" println
fib := method(n,
  return if(n < 3, 1, fib(n-2) + fib(n-1))
)

for(i, 1, 8, fib(i) println)


"---" println
"Loop version" println
fib_loop := method(n,
  if(n < 3) then(return 1)

  a := list(1, 1)
  for(i, 3, n, a append(a at(i-2) + a at(i-3)))
  return a at(n-1)
)

for(i, 1, 8, fib_loop(i) println)
