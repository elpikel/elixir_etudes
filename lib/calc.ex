defmodule Calc do
  def sum(a \\ 3, b, c \\ 7) do
    a + b + c
  end

  def gdc(m, n) when m == n, do: m
  def gdc(m, n) when m > n, do: gdc(m-n, n)
  def gdc(m, n), do: gdc(m, n-m)
end