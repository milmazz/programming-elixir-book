defmodule MyList do
  @moduledoc """
  Write a function mapsum that takes a list and a function. It applies the
  function to each element of the list, and then sums the result, so:

      iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
      14

  Exercise: ListsAndRecursion-1
  """
  def mapsum(list, func) when is_list(list) do
    do_mapsum(list, 0, func)
  end

  defp do_mapsum([], value, _func), do: value

  defp do_mapsum([head | tail], value, func) do
    do_mapsum(tail, value + func.(head), func)
  end
end
