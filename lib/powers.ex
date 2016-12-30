defmodule Powers do
  def rise(_x, 0), do: 1
  def rise(x, 1), do: x
  def rise(x, n) when n < 0, do: (1 / rise(x, -n))
  def rise(x, n), do: x * rise(x, n - 1)
end