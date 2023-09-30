defmodule Factorial do
  def of(n) do
    case n do
      0 -> 1
      1 -> 1
      n -> n * of(n - 1)
    end
  end
end

IO.puts("enter a number:")

number = case Integer.parse(IO.read(:stdio, :line)) do
    :error -> raise "Invalid input. Please enter a valid non-negative integer."
    {n, _} when n < 0 -> raise "Invalid input. Please enter a non-negative integer."
    {n, _} -> n
end

IO.puts(Factorial.of(number))
