ExUnit.start

defmodule NumberListTest do
  use ExUnit.Case, async: true

  test "#size returns 0 for empty list" do
    assert NumberList.size([]) == 0
  end

  test "#size returns 4 for [8, 2, 23, 11]" do
    assert NumberList.size([8, 2, 23, 11]) == 4
  end

  test "#max returns 0 for empty list" do
    assert NumberList.max([]) == 0
  end

  test "#max returns 23 for [8, 2, 23, 11]" do
    assert NumberList.max([8, 2, 23, 11]) == 23
  end

  test "#min returns :ok for empty list" do
    assert NumberList.min([]) == :ok
  end

  test "#min returns 2 for [8, 2, 23, 11]" do
    assert NumberList.min([8, 2, 23, 11]) == 2
  end
end

defmodule AtomListTest do
  use ExUnit.Case, async: true

  test "#word_count returns %{} for empty list" do
    assert AtomList.word_count([]) == %{}
  end

  test "#word_count returns %{one: 1, two: 2, three: 3} for [:one, :two, :three, :two, :three, :three]" do
    assert AtomList.word_count([:one, :two, :three, :two, :three, :three]) == %{one: 1, two: 2, three: 3}
  end
end
