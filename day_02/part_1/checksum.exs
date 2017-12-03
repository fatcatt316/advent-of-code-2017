defmodule Checksum do
  def calculate(number_rows) do
    number_rows
    |> Enum.reduce(0, fn(row, acc) -> row_sum(row) + acc end)
  end

  defp row_sum(row) do
    Enum.max(row) - Enum.min(row)
  end

  defp row_sum([]) do
    0
  end
end
