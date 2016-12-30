defmodule Dates do
  def get_parts(date) do
    date
    |> String.split("-")
    |> Enum.map(fn(item) -> String.to_integer(item) end)
  end
end