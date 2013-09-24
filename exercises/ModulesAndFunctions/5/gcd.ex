defmodule Gdc do
  def gdc(x, 0) when x > 0, do: x
  def gdc(x, y) when x > 0 and y > 0, do: gdc(y, rem(x,y))
end
