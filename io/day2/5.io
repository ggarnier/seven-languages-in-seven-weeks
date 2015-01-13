Matrix := List clone;

Matrix dim := method(x, y,
  if(self proto() type() == "List",
    return Matrix clone() dim(x, y);
  );

  for(i, 0, x-1,
    new_list := List clone;
    new_list setSize(y);
    self append(new_list);
  );
);

Matrix set := method(x, y, value,
  self at(x) atPut(y, value)
);

Matrix get := method(x, y,
  return self at(x) at(y)
);

Matrix x := method(return self size);
Matrix y := method(return self at(0) size);


matrix := Matrix dim(2, 3)
matrix set(0, 0, "a1")
matrix set(0, 1, "b1")
matrix set(0, 2, "c1")
matrix set(1, 0, "a2")
matrix set(1, 1, "b2")
matrix set(1, 2, "c2")

matrix println
