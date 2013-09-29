defmodule MyList do
  def sum(list), do: do_sum(list, 0)

  defp do_sum([], total), do: total
  defp do_sum([head | tail], total), do: do_sum(tail, head + total)
end
