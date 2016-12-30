defmodule Stats do
  def minimum([head | tail]), do: element(tail, head, fn(a, b) -> a <= b end)
  def maximum([head | tail]), do: element(tail, head, fn(a, b) -> a >= b end)

  def range(list), do: [minimum(list), maximum(list)]

  defp element([], min, _func), do: min
  defp element([head|tail], min, func) do
    if func.(head, min) do
      element(tail, head, func)
    else
      element(tail, min, func)
    end
  end
end