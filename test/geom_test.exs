defmodule GeomTest do
  use ExUnit.Case
  doctest Geom

  test "area for given length and width" do
    assert 4 == Geom.area(2,2)
  end

  test "default value for width is 1" do
    assert 2 == Geom.area(2)
  end

  test "default value for length is 1" do
    assert 1 == Geom.area()
  end
end