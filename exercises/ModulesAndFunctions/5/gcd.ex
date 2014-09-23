defmodule Gdc do
  @moduledoc """
  Greatest common divisor.

  Write a function `gcd(x,y)` that finds the greatest common divisor between two
  nonnegative integers. Algebraically, `gcd(x,y)` is x if y is zero, `gcd(y,
  rem(x,y))` otherwise.

  Exercise: ModulesAndFunctions-5
  """
  def gdc(x, 0) when x > 0, do: x
  def gdc(x, y) when x > 0 and y > 0, do: gdc(y, rem(x, y))
end
