defmodule Day2.Part1 do
  @input "input.txt" |> File.read!() |> String.split("\n", trim: true)

  def run do
    valid_passwords = Enum.reduce(@input, 0, fn raw, valid_passwords ->
      [min, max, letter, password] = String.split(raw, ["-", " ", ":", " "], trim: true)

      occurences = password |> String.graphemes |> Enum.count(& &1 == letter)

      if occurences <= String.to_integer(max) && occurences >= String.to_integer(min) do
        valid_passwords + 1
      else
        valid_passwords
      end
    end)

    IO.inspect(valid_passwords)
  end
end

Day2.Part1.run()
