# Represent a tree of sentences as tuples. Traverse the tree, presenting an indented list.
# For example, traverse({"See Spot.", {"See Spot sit.", "See Spot run."}}) would return:
# See Spot.
#   See Spot sit.
#   See Spot run.
defmodule Tree do
  def traverse({x, y}) do
    traverse({x, y}, "")
  end

  def traverse({x, {y, z}}, tab) do
    IO.puts "#{tab}#{x}"
    traverse({y, z}, "  #{tab}")
  end

  def traverse({x, y}, tab) do
    IO.puts "#{tab}#{x}"
    IO.puts "#{tab}#{y}"
  end
end

Tree.traverse({"See Spot.", {"See Spot sit.", "See Spot run."}})
Tree.traverse({"1", {"2", {"3", {"4", "5"}}}})

# Given an incomplete tic-tac-toe board, compute the next player’s best move.
