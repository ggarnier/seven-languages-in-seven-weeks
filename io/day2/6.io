doFile("./io/day2/5.io")

Matrix new_matrix := method(
  new_x := self y;
  new_y := self x;
  new := Matrix dim(new_x, new_y);

  for(i, 0, new_x - 1,
    for(j, 0, new_y - 1,
      new set(i, j, self get(j, i))
    )
  );
  return new;
)


matrix new_matrix println
