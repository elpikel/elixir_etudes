defmodule Powers do
  def rise(x, n), do: rise(x, n, 1)

  def rise(_x, 0, _), do: 1
  def rise(x, 1, acc), do: x * acc
  def rise(x, n, acc) when n < 0, do: (1 / rise(x, -n, acc))
  def rise(x, n, acc), do: rise(x, n - 1, acc * x)

  def nth_root(x, n), do: nth_root(x, n, x / 2.0)

  def nth_root(x, n, a) do
    IO.puts("Current guess is #{a}")

    f = rise(a, n) - x
    f_prime = n * rise(a, n - 1)

    next = a - f / f_prime
    change = abs(next - a)

    if change < 0.00000001 do
      next
    else
      nth_root(x, n, next)
    end
  end
end
