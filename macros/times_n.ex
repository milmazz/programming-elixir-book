defmodule Times do
  defmacro times_n(arg) do
    func_name = String.to_atom "times_#{arg}"
    quote do
      def unquote(func_name)(n) do
        n * unquote(arg)
      end
    end
  end
end

defmodule Test do
  require Times
  Times.times_n(3)
  Times.times_n(4)
end

IO.puts Test.times_3(4) # 12
IO.puts Test.times_4(5) # 20