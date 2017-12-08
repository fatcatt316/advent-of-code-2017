defmodule PassphraseValidator do
  def is_valid(passphrase) do
    passphrase
    |> String.split
    |> aint_no_dupes
  end

  def count_valid_passphrases_in_file do
    line_by_line('input.txt')
    |> Enum.filter(fn(line) -> is_valid(line) end)
    |> length
  end

  def is_valid_part_two(passphrase) do
    passphrase
    |> String.split
    |> Enum.map(fn(word) -> alphabetized_word(word) end) # I know there's a shorthand way to do this...
    |> aint_no_dupes
  end

  defp aint_no_dupes(list) do
    length(list) == (Enum.uniq(list) |> length)
  end

  defp alphabetized_word(word) do
    word
    |> String.graphemes
    |> Enum.sort
    |> Enum.join(" ")
  end

  defp line_by_line(path) do
    File.stream!(path)
    |> Stream.map(&(IO.inspect(&1)))
  end
end
