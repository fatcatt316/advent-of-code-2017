Code.load_file("captcha_thingy.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule CaptchaThingyTest do
  use ExUnit.Case

  test "1122" do
    assert CaptchaThingy.calculate(1122) == 3
  end

  test "1111" do
    assert CaptchaThingy.calculate(1111) == 4
  end

  test "1234" do
    assert CaptchaThingy.calculate(1234) == 0
  end

  test "91212129" do
    assert CaptchaThingy.calculate(91212129) == 9
  end
end
