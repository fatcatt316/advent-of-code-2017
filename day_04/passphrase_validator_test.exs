Code.load_file("passphrase_validator.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule PassphraseValidatorTest do
  use ExUnit.Case

  test "aa bb cc dd ee" do
    assert PassphraseValidator.is_valid("aa bb cc dd ee") == true
  end

  test "aa bb cc dd aa" do
    assert PassphraseValidator.is_valid("aa bb cc dd aa") == false
  end

  test "aa bb cc dd aaa" do
    assert PassphraseValidator.is_valid("aa bb cc dd aaa") == true
  end
end
