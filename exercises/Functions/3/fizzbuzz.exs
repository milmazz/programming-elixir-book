fizzbuzz = fn
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_, _, n} -> n
end

remainder = fn
  n -> fizzbuzz.({rem(n, 3), rem(n, 5), n})
end

Enum.each 0..100, &(IO.puts "#{&1}: #{remainder.(&1)}")