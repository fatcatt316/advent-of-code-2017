defmodule SpiralGrid do
  def steps(entry) do
    odd_numbers = find_grid_max(entry)
    max_steps(odd_numbers) - distance_from_closest_corner(entry, List.first(odd_numbers))
  end

  defp distance_from_closest_corner(entry, highest_odd) do
    grid_max = highest_odd * highest_odd

    side = highest_odd - 1

    Enum.to_list(0..3)
    |> Enum.map(fn(x) -> grid_max - (x * side) end)
    |> Enum.map(fn(corner) -> abs(corner - entry) end)
    |> Enum.min
  end

  defp max_steps(odd_numbers) do
    max_steps = (length(odd_numbers) - 1) * 2
  end

  defp find_grid_max(entry) do
    find_grid_max(entry, [1])
  end

  defp find_grid_max(entry, [highest_odd | _] = list) when highest_odd * highest_odd >= entry do
    list
  end

  defp find_grid_max(entry, [highest_odd | _] = list) do
    find_grid_max(entry, [highest_odd + 2| list])
  end
end
