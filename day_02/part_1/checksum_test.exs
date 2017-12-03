Code.load_file("checksum.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule ChecksumTest do
  use ExUnit.Case

  test "with 3 rows" do
    spreadsheet = [[5, 1, 9, 5], [7, 5, 3], [2, 4, 6, 8]]
    assert Checksum.calculate(spreadsheet) == 18
  end
end
