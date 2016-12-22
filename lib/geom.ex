defmodule Geom do
  @moduledoc """
  Functions for calculating areas of geometric shapes.
  """
  @vsn 0.1

  @doc """
  Calculates the area of a rectangle, given the length and width.
  Returns the product of its arguments. The default value for
  both arguments is 1.

  ## Examples

      iex> Geom.area(2, 2)
      4

  """

  @spec area(number(), number()) :: number()
  def area(length \\ 1, width \\ 1) when length > 0 and width > 0 do
    length * width
  end

  def area(:triangle, a, b) when a > 0 and b > 0 do
    a * b / 2.0
  end

  def area(:rectangle, a, b) when a > 0 and b > 0 do
    a * b
  end

  def area(:ellipse, a, b) when a > 0 and b > 0 do
    :math.pi() * a * b
  end
end