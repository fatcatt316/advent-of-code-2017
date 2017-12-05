Code.load_file("spiral_grid.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule SpiralGridTest do
  use ExUnit.Case

  test "from square 1" do
    assert SpiralGrid.steps(1) == 0
  end

  test "from square 12" do
    assert SpiralGrid.steps(12) == 3
  end

  test "from square 23" do
    assert SpiralGrid.steps(23) == 2
  end

  test "from square 1024" do
    assert SpiralGrid.steps(1024) == 31
  end
end
