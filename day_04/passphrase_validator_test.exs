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

  # Part two
  test "abcde fghij" do
    assert PassphraseValidator.is_valid_part_two("abcde fghij") == true
  end

  test "abcde xyz ecdab" do
    assert PassphraseValidator.is_valid_part_two("abcde xyz ecdab") == false
  end

  test "a ab abc abd abf abj" do
    assert PassphraseValidator.is_valid_part_two("a ab abc abd abf abj") == true
  end

  test "iiii oiii ooii oooi oooo" do
    assert PassphraseValidator.is_valid_part_two("iiii oiii ooii oooi oooo") == true
  end

  test "oiii ioii iioi iiio" do
    assert PassphraseValidator.is_valid_part_two("oiii ioii iioi iiio") == false
  end
end
