ExUnit.start

defmodule RightTriangleTest do
  use ExUnit.Case, async: true

  test "#hypotenuse" do
    assert RightTriangle.hypotenuse({3, 4}) == 5
  end
end

defmodule StringToAtomTest do
  use ExUnit.Case, async: true

  test "#convert" do
    assert StringToAtom.convert("mystring") == :mystring
  end
end

defmodule TestIsAtomTest do
  use ExUnit.Case, async: true

  test "#check" do
    assert TestIsAtom.check(:atom)
    assert !TestIsAtom.check("not atom")
  end
end
