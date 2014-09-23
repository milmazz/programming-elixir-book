# Write a function prefix that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will return
# a string containing the first string, a space, and the second string.
#
# Exercise: Functions-4

prefix = fn x -> (fn y -> Enum.join([x, y], " ") end) end

prefix.("Elixir").("Rocks")
