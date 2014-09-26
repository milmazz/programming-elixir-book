defmodule Countdown do
  def sleep(seconds) do
    receive do
      after seconds * 1000 -> nil
    end
  end

  def say(text) do
    spawn fn -> :os.cmd('say #{text}') end
  end

  def timer do
    Stream.resource(
    # return the number of seconds to the start of the next minute
    fn ->
      {_h, _m, s} = :erlang.time
      60 - s - 1
    end,

    # wait for the next second, then return its countdown
    fn
      count when count == 0 ->  {:halt, 0}

      count ->
        sleep(1)
        { [inspect(count)], count - 1}
    end,

    # nothing to deallocate
      fn _ -> end
    )
  end
end
