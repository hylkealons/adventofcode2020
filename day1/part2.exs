defmodule Day1.Part2 do
  @magic_number 2020
  @input "input.txt" |> File.read!() |> String.split |> Enum.map(&String.to_integer/1)

  def run do
    IO.inspect(multiply2020(@input))
  end

  def multiply2020(numbers) do

    try do
      for i <- numbers,
          j <- numbers,
          k <- numbers,
          i + j + k == @magic_number,
          # exit as soon as we find the solution
          do: throw({:break, i * j * k})
    catch
      {:break, result} -> result
    end
  end
end

Day1.Part2.run()
