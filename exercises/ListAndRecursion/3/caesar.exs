defmodule MyList do
  def caesar([], _n), do: []

  def caesar([head | tail], n) do
    [do_caesar(head, n) | caesar(tail, n)]
  end

  defp do_caesar(base, n) do
    ?a + rem(base - ?a + n, ?z - ?a + 1)
  end
end
