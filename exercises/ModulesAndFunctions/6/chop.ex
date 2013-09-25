defmodule Chop do

  def guess(actual, min..max) do
    do_guess(actual, min..max, div(max, 2))
  end

  defp do_guess(actual, min.._max, guess) when guess > actual do
    IO.puts "Is it #{guess}"
    do_guess(actual, min..guess - 1, min + div(guess - 1 - min, 2))
  end

  defp do_guess(actual, _min..max, guess) when guess < actual do
    IO.puts "Is it #{guess}"
    do_guess(actual, guess + 1..max, guess + div(max - guess + 1, 2))
  end

  defp do_guess(actual, _range, guess) when guess == actual do
    IO.puts "Is it #{guess}\n#{guess}"
  end

end
