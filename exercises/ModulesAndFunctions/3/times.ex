defmodule Times do
  @moduledoc """
  First exercises about named functions.

  - Extend the Times module with a triple function, that multiplies its parameter by three.
  - Add a quadruple function. (Maybe it could call the double function...)

  Exercises: ModulesAndFunctions-1, ModulesAndFunctions-3
  """
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end
