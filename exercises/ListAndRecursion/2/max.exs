defmodule MyList do
  @moduledoc """
  Write `max(list)` that returns the element with the maximum value in the list.

  Exercise: ListAndRecursion-2
  """
  def max([head | tail]), do: do_max(tail, head)

  defp do_max([], value), do: value

  defp do_max([head | tail], value) do
    do_max(tail, Kernel.max(head, value))
  end
end
