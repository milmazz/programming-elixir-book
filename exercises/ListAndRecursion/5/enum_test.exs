Code.require_file "enum.exs"

ExUnit.start

defmodule MyEnumTest do
  use ExUnit.Case, async: true

  test "MyEnum.all?" do
    assert MyEnum.all?([2, 4, 6], fn(x) -> rem(x, 2) == 0 end)
    refute MyEnum.all?([2, 3, 4], fn(x) -> rem(x, 2) == 0 end)
  end

  test "MyEnum.filter" do
    assert MyEnum.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 end) == [2]
  end

  test "MyEnum.each" do
    assert Enum.each(["some", "example"], fn(x) -> IO.puts x end) == :ok
  end

end
