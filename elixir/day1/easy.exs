# Express some geometry objects using tuples: a two-dimensional point, a line, a circle, a polygon, and a triangle.
defmodule Geometry do
  def point({x, y}) do
    IO.puts "Point at #{x}x#{y}"
  end

  def line({{x1, y1}, {x2, y2}}) do
    IO.puts "Line from #{x1}x#{y1} to #{x2}x#{y2}"
  end

  def circle({{x, y}, r}) do
    IO.puts "Circle at #{x}x#{y} with radius #{r}"
  end

  def polygon([]), do: :ok
  def polygon([head | tail]) do
    {x, y} = head
    IO.puts "Polygon with vertex #{x}x#{y}"
    polygon(tail)
  end

  def triangle({{x1, y1}, {x2, y2}, {x3, y3}}) do
    IO.puts "Triangle with vertices #{x1}x#{y1}, #{x2}x#{y2}, #{x3}x#{y3}"
  end
end

Geometry.point({5, 12})
Geometry.line({{1, 10}, {15, 8}})
Geometry.circle({{5, 5}, 10})
Geometry.polygon([{1, 2}, {1, 5}, {3, 9}, {4, 16}])
Geometry.triangle({{1, 1}, {1, 5}, {3, 3}})


# Write a function to compute the hypotenuse of a right triangle given the length of two sides.
defmodule RightTriangle do
  def hypotenuse({a, b}) do
    :math.sqrt(a*a + b*b)
  end
end

IO.puts "Hypotenuse: #{RightTriangle.hypotenuse({10, 15})}"

# Convert a string to an atom.
defmodule StringToAtom do
  def convert(string) do
    String.to_atom(string)
  end
end

IO.puts "String to atom: #{StringToAtom.convert("some string")}"

# Test to see if an expression is an atom.
defmodule TestIsAtom do
  def check(param) do
    Kernel.is_atom(param)
  end
end

IO.puts "Is 'string' an atom? #{TestIsAtom.check("string")}"
IO.puts "Is [] an atom? #{TestIsAtom.check([])}"
IO.puts "Is :string an atom? #{TestIsAtom.check(:string)}"
