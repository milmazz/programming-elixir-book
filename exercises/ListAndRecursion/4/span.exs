defmodule MyList do
  @moduledoc """
  Write a function `MyList.span(from, to)` that returns a list of the numbers
  from `from` up to `to`.

  Exercise: ListAndRecursion-4
  """
  def span(from, to) when from > to and is_number(from) and is_number(to), do: []
  def span(from, to) when from <= to and is_number(from) and is_number(to), do: [from | span(from + 1, to)]
end
