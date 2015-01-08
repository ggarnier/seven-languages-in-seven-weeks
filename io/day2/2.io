Number setSlot(
  "division",
  Number getSlot("/")
);

Number setSlot(
  "/",
  method(denominator,
    return if(denominator == 0, 0, self division(denominator))
  )
)

(10/2) println
(10/0) println
