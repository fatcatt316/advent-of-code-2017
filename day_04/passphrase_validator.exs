defmodule PassphraseValidator do
  def is_valid(passphrase) do
    original_list = String.split(passphrase)
    length(original_list) == (Enum.uniq(original_list) |> length)
  end

  def count_valid_passphrases_in_file do
    line_by_line('input.txt')
    |> Enum.filter(fn(line) -> is_valid(line) end)
    |> length
  end

  defp line_by_line(path) do
    File.stream!(path)
    |> Stream.map(&(IO.inspect(&1)))
  end
end
