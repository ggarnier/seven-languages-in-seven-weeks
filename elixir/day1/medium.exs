# Given a list of numbers, use recursion to find (1) the size of the list,
# (2) the maximum value, and (3) the minimum value.
defmodule NumberList do
  def size([]), do: 0
  def size([_ | tail]) do
    1 + size(tail)
  end

  def max([]), do: 0
  def max([head | tail]) do
    Kernel.max(head, max(tail))
  end

  def min([]), do: :ok
  def min([head | tail]) do
    Kernel.min(head, min(tail))
  end
end

IO.puts "List [1, 2, 3] has #{NumberList.size([1, 2, 3])} elements"
IO.puts "Max value from [10, 20, 8, 17]: #{NumberList.max([10, 20, 8, 17])}"
IO.puts "Min value from [10, 20, 8, 17]: #{NumberList.min([10, 20, 8, 17])}"


# Given a list of atoms, build a function called word_count that returns a keyword list,
# where the keys are atoms from the list and the values are the number of occurrences of
# that word in the list. For example, word_count([:one, :two, :two]) returns [one: 1, two: 2].
defmodule AtomList do
  def word_count([]), do: %{}
  def word_count([head | tail]) do
    wc = word_count(tail)
    Map.put(wc, head, (wc[head] || 0) + 1)
  end
end

IO.inspect AtomList.word_count([:one, :two, :two])
