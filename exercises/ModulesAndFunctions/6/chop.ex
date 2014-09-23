defmodule Chop do
  @moduledoc """
  Guess number between a range.

  *I'm thinking of a number between 1 and 1000...*

  The most efficient way to find the number is to guess halfway between the low
  and high numbers of the range. If our guess is too big, then the answer lies
  between the bottom of the range and one less than our guess. If it is too
  small, then the answer lies between one more than our guess and the end of
  the range.

  Code this up. Your API will be `guess(actual, range)`, where range is an
  Elixir range.
  Your output should look similar to:

      iex> Chop.guess(273, 1..1000)
      Is it 500
      Is it 250
      Is it 375
      Is it 312
      Is it 281
      Is it 265
      Is it 273
      273
  """
  def guess(actual, min..max) when actual >= min and actual <= max do
    do_guess(actual, min..max, min + div(max - min, 2))
  end

  defp do_guess(actual, min.._max, guess) when guess > actual do
    max = guess - 1
    do_print(actual, min..max, guess)
  end

  defp do_guess(actual, _min..max, guess) when guess < actual do
    min = guess + 1
    do_print(actual, min..max, guess)
  end

  defp do_guess(actual, _, guess) when guess == actual do
    IO.puts "Is it #{guess}\n#{guess}"
  end

  defp do_print(actual, min..max, guess) do
    IO.puts "Is it #{guess}"
    do_guess(actual, min..max, min + div(max - min, 2))
  end

end
