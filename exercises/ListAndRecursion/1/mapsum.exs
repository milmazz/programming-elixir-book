defmodule MyList do
  def mapsun(list, func), do: do_sum(do_map(list, func))

  defp do_map([], _func), do: []
  defp do_map([head | tail], func), do: [func.(head) | do_map(tail, func)]

  defp do_sum([]), do: 0
  defp do_sum([head | tail]), do: head + do_sum(tail)
end
