defmodule SpiralGrid do
  def steps(entry) do
    odd_numbers = find_grid_max(entry)
    at_most_this_many_steps = (length(odd_numbers) - 1) * 2
    at_least_this_many_steps = Enum.max([(length(odd_numbers) - 2) * 2, 1])
    


    IO.puts "PATH IS AT LEAST #{at_least_this_many_steps} AND AT MOST #{at_most_this_many_steps}"


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
