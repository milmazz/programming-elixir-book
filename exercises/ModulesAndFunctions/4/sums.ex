defmodule Sum do
  @moduledoc """
  Sum of integers from 1 to n.

  Implement and run a function `sum(n)` that uses recursion to calculate the
  sum of the integers from 1 to n.

  Exercise: ModulesAndFunctions-4
  """

  def of(0), do: 0
  def of(n) when n > 0 and is_number(n), do: n + of(n - 1)
end

