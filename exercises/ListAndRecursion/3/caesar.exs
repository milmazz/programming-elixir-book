defmodule MyList do
  @moduledoc """
  An Elixir single quoted string is actually a list of individual character
  codes. Write a function `caesar(list, n)` that adds `n` to each element of the
  list, wrapping if the addition results in a character greater than `z`.

      iex> MyList.caesar('ryvkve', 13)

  Exercise: ListAndRecursion-3
  """
  def caesar([], _n), do: []

  def caesar([head | tail], n) do
    [do_caesar(head, n) | caesar(tail, n)]
  end

  defp do_caesar(base, n) do
    ?a + rem(base - ?a + n, ?z - ?a + 1)
  end
end
