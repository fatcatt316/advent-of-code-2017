defmodule PassphraseValidator do
  def validate(passphrase) do
    original_list = String.split(passphrase)
    length(original_list) == (Enum.uniq(original_list) |> length)
  end
end
