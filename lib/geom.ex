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
  def area(length \\ 1, width \\ 1) do
    length * width
  end
end