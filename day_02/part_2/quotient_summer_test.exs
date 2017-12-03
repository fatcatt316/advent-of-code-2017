Code.load_file("row_summer.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule QuotientSummerTest do
  use ExUnit.Case

  test "with 3 rows" do
    spreadsheet = [[5, 9, 2, 8], [9, 4, 7, 3], [3, 8, 6, 5]]
    assert QuotientSummer.calculate(spreadsheet) == 9
  end
end
