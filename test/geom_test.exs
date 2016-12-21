defmodule GeomTest do
  use ExUnit.Case
  doctest Geom

  test "area for given length and width" do
    assert 4 == Geom.area(2,2)
  end
end