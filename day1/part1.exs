defmodule Day1 do
  @magic_number 2020
  @input "input.txt" |> File.read!() |> String.split |> Enum.map(&String.to_integer/1)

  def run do
    IO.inspect(multiply2020(@input))
  end

  def multiply2020([current | rest]) do
    result = Enum.find(rest, fn x -> current + x == @magic_number end)

    if result == nil do
      multiply2020(rest)
    else
      current * result
    end
  end
end

Day1.run()
