defmodule MyList do
  def reduce([], value, _), do: value
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end
end
