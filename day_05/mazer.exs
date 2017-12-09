defmodule Mazer do
  def escape(jump_offsets) do
    follow_instruction(jump_offsets)
  end

  defp follow_instruction(jump_offsets, index \\ 0, step_count \\ 0) do
    IO.inspect div(index, 100)
    case Enum.at(jump_offsets, index) do
      nil -> step_count
      _ -> 
        jump_offsets
        |> List.replace_at(index, updated_offset(Enum.at(jump_offsets, index)))
        |> follow_instruction(index + Enum.at(jump_offsets, index), step_count + 1)
    end
  end

  defp updated_offset(offset) do
    # Part 1
    # offset + 1
    # Part 2
    case offset do
      x when x > 2 -> x - 1
      _ -> offset + 1
    end
  end

  def steps_for_file do
    line_by_line()
    |> Enum.to_list
    |> Enum.map(&convert_line_to_number/1)
  end

  defp convert_line_to_number(line) do
    line
    |> String.trim_trailing
    |> String.to_integer
  end

  defp line_by_line do
    File.stream!('input.txt')
    |> Stream.map(&(IO.inspect(&1)))
  end
end
