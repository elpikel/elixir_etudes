defmodule Powers do
  def rise(x, n), do: rise(x, n, 1)

  def rise(_x, 0, _), do: 1
  def rise(x, 1, acc), do: x * acc
  def rise(x, n, acc) when n < 0, do: (1 / rise(x, -n, acc))
  def rise(x, n, acc), do: rise(x, n - 1, acc * x)
end