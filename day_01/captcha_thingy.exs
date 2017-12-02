defmodule CaptchaThingy do

  @doc """
  Does some calculation stuff
  """
  @spec calculate(number :: integer) :: integer
  def calculate(number) do
    digits = Integer.digits(number)
    digits ++ [Enum.at(digits, 0)]
    |> add_consecutive_matching_digits(Enum.at(digits, 1), 0)
  end

  defp add_consecutive_matching_digits([], _next_digit, sum) do
    sum
  end

  defp add_consecutive_matching_digits([head | tail], next_digit, sum) when head == next_digit do
    add_consecutive_matching_digits(tail, Enum.at(tail, 1), sum + head)
  end

  defp add_consecutive_matching_digits([head | tail], next_digit, sum) when head != next_digit do
    add_consecutive_matching_digits(tail, Enum.at(tail, 1), sum)
  end
end