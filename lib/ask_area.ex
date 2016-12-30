defmodule AskArea do
  def area() do
    char_to_shape
    |> get_dimensions
    |> calculate
  end

  defp char_to_shape() do
    char = IO.gets "R)ectangle, T)riangle, or E)llipse: "

    char
    |> String.strip
    |> String.downcase
    |> char_to_shape
  end

  defp char_to_shape(char) do
    case char do
       "r" -> :rectangle
       "t" -> :triangle
       "e" -> :ellipse
    end
  end

  defp get_dimensions(shape) do
    dim1 = get_number("width")
    dim2 = get_number("height")

    {shape, dim1, dim2}
  end

  defp get_number(prompt) do
    number = IO.gets "Enter #{prompt} > " 

    number
    |> String.strip
    |> String.to_integer
  end

  defp calculate({shape, dim1, dim2}) do
    Geom.area({shape, dim1, dim2})
  end
end