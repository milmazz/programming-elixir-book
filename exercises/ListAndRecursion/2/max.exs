defmodule MyList do
  def max([head | tail]), do: do_max(tail, head)

  defp maximum(a, b) when a > b, do: a
  defp maximum(a, b) when a < b, do: b

  defp do_max([], value), do: value
  defp do_max([head | tail], value) do
    do_max(tail, maximum(head, value))
  end
end
