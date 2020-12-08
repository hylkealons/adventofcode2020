defmodule Day2.Part2 do
  @input "input.txt" |> File.read!() |> String.split("\n", trim: true)

  def run do
    valid_passwords = Enum.reduce(@input, 0, fn raw, valid_passwords ->
      [i1, i2, letter, password] = String.split(raw, ["-", " ", ":", " "], trim: true)

      c1 = String.at(password, String.to_integer(i1) - 1)
      c2 = String.at(password, String.to_integer(i2) - 1)

      if c1 != c2 && (c1 == letter || c2 == letter) do
        valid_passwords + 1
      else
        valid_passwords
      end
    end)

    IO.inspect(valid_passwords)
  end
end

Day2.Part2.run()
