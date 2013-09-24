defmodule Chop do

  def guess(actual, _min..max) when max == actual do
  	IO.puts actual
  end

  def guess(actual, min..max) when max > actual do
  	IO.puts "Is it #{max}"
    guess(actual, min..min+div(max-min, 2))
  end

  def guess(actual, _min..max) when max < actual do
    IO.puts "Is it #{max}"
    guess(actual, max..max + div(max, 2))
  end
end
