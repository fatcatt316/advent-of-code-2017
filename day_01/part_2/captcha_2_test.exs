Code.load_file("captcha_2.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule Captcha2Test do
  use ExUnit.Case

  test "1212" do
    assert Captcha2.calculate(1212) == 6
  end

  test "1221" do
    assert Captcha2.calculate(1221) == 0
  end

  test "123425" do
    assert Captcha2.calculate(123425) == 4
  end

  test "123123" do
    assert Captcha2.calculate(123123) == 12
  end

  test "12131415" do
    assert Captcha2.calculate(12131415) == 4
  end
end
