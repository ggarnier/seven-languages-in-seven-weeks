doFile("./io/day2/5.io")

Matrix write := method(file_name,
  f := File with(file_name)
  f remove
  f openForUpdating

  for(i, 0, self x - 1,
    for(j, 0, self y - 1,
      f write(self get(i, j))
      f write(" ")
    )
    f write("\n")
  )
  f close
);

Matrix read := method(file_name,
  f := File with(file_name)
  f openForReading
  file_contents := f readToEnd
  f close

  lines := file_contents split("\n")
  x := lines size
  y := lines at(0) split(" ") size

  new := Matrix dim(x, y)
  lines foreach(i, line,
    line split(" ") foreach(j, value,
      new set(i, j, value)
    )
  )

  return new
);


matrix write("matrix.txt")
matrix_from_file := matrix read("matrix.txt")
matrix_from_file println
