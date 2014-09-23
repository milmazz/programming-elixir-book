# Write a function that takes three arguments. If the first two are zero, return
# `FizzBuzz`. If the first is zero, return `Fizz`. If the second
# is zero return `Buzz`. Otherwise return the third argument.
#
# Exercise: Functions-2

fizzbuzz = fn
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_, _, n} -> n
end

# The operator `rem(a, b)` returns the remainder after dividing a by b. Write a
# function that takes a single integer (n) and which calls the function in the
# previous exercise, passing it `rem(n,3)`, `rem(n,5)`, and `n`. Call it 7 times
# with the arguments 10, 11, 12, etc. You should get "Buzz, 11, Fizz, 13, 14,
# FizzBuzz, 16"
#
# Exercise: Functions-3

remainder = fn
  n -> fizzbuzz.({rem(n, 3), rem(n, 5), n})
end

Enum.map(10..16, fn(x) -> IO.puts remainder.(x) end)
