defmodule Dates do
  def get_parts(date) do
    date
    |> String.split("-")
    |> Enum.map(fn(item) -> String.to_integer(item) end)
  end

  def julian(date) do
    [y, m, d] = get_parts(date)

    days_in_feb = cond do
      is_leap_year(y) -> 29
      true -> 28
    end

    days_per_month = [31, days_in_feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    month_total(m, days_per_month, 0) + d
  end

  defp is_leap_year(year) do
    (rem(year, 4) == 0 and rem(year, 100) != 0) or (rem(year, 400) == 0)
  end

  defp month_total(1, _days_per_month, total) do
    total
  end

  defp month_total(m, [this_month|other_months], total) do
    month_total(m - 1, other_months, total + this_month)
  end
end
