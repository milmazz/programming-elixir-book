defmodule MyList do
  def mapsum([], _func), do: []
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end
end
