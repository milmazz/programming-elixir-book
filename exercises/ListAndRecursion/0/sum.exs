defmodule MyList do
  @moduledoc """
  I defined our `sum` function to carry a partial total around as a second
  parameter. I did this so I could illustrate how to use accumulators to build
  values. The `sum` function can also be written without an accumulator. Can
  you do it?

  Exercise: ListAndRecursion-0
  """
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end
