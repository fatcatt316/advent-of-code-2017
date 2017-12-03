defmodule QuotientSummer do
  def calculate(number_rows) do
    number_rows
    |> Enum.reduce(0, fn(row, acc) -> row_sum(row) + acc end)
  end

  defp row_sum(row) do
    row
    |> Enum.sort
    |> first_denominator
  end

  defp row_sum([]) do
    0
  end

  defp first_denominator([head | tail]) do
    even_numerator = tail
    |> Enum.filter(fn(x) -> rem(x, head) == 0 end)
    |> Enum.at(0)

    if even_numerator, do: div(even_numerator, head), else: first_denominator(tail)
  end
end
