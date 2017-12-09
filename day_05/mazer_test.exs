Code.load_file("mazer.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule MazerTest do
  use ExUnit.Case

  test "0 3 0 1 -3" do
    assert Mazer.escape([0, 3, 0, 1, -3]) == 5
  end
end
