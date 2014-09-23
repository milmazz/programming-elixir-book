defmodule MyEnum do
  @moduledoc """
  Implement the following `Enum` functions using no library functions or list
  comprehensions: `all?`, `each`, `filter`, `split`, and `take`. You may need
  to use an `if` statement to implement filter.

  Exercise: ListsAndRecursion-5
  """

  @doc """
  The same as `h Enum.all?`
  """
  def all?([], _), do: true
  def all?([h|t], func) do
    func.(h) and all?(t, func)
  end

  @doc """
  The same as `h Enum.each`
  """
  def each([], _), do: :ok
  def each([h|t], func) do
    func.(h)
    each(t, func)
  end

  @doc """
  The same as `h Enum.filter`
  """
  def filter(list, func) do
    do_filter(list, func, [])
  end

  defp do_filter([], _, result), do: result
  defp do_filter([h|t], func, result) do
    if func.(h) do
      result = [h | result]
    end
    do_filter(t, func, result)
  end
end
