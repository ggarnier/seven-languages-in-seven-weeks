ExUnit.start

defmodule TreeTest do
  use ExUnit.Case, async: true

  test "#traverse accepts single level trees" do
    assert Tree.traverse({"one", "two"}) == "one\ntwo"
  end

  test "#traverse accepts two level trees" do
    assert Tree.traverse({"one", {"two", "three"}}) == "one\n  two\n  three"
  end

  test "#traverse accepts three level trees" do
    assert Tree.traverse({"one", {"two", {"three", "four"}}}) == "one\n  two\n    three\n    four"
  end
end
