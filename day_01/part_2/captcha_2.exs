defmodule Captcha2 do

  @doc """
  Does some calculation stuff
  """
  @spec calculate(number :: integer) :: integer
  def calculate(number) do
    digits = Integer.digits(number)
    half_length = div(length(digits), 2)
    add_halfway_matching_digits(digits, 0, 0, Enum.at(digits, 0), Enum.at(digits, half_length), half_length)
  end

  defp add_halfway_matching_digits(_digits, index, sum, _cur, _comp, half_length) when index >= half_length do
    sum
  end

  defp add_halfway_matching_digits(digits, index, sum, cur, comp, half_length) when cur == comp do
    new_cur = Enum.at(digits, (index + 1))
    new_comp = Enum.at(digits, (index + 1 + half_length))

    add_halfway_matching_digits(digits, (index + 1), (sum + cur + cur), new_cur, new_comp, half_length)
  end

  defp add_halfway_matching_digits(digits, index, sum, cur, comp, half_length) when cur != comp do
    new_cur = Enum.at(digits, (index + 1))
    new_comp = Enum.at(digits, (index + 1 + half_length))

    add_halfway_matching_digits(digits, (index + 1), sum, new_cur, new_comp, half_length)
  end  
end
