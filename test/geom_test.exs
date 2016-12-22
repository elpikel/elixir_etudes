defmodule GeomTest do
  use ExUnit.Case
  doctest Geom
  
  test "calculates area of triangle" do
    assert 7.5 == Geom.area({:triangle, 3, 5})
  end

  test "calculates area of rectangle" do
    assert 12 == Geom.area({:rectangle, 3, 4})
  end

  test "calculates area of ellipse" do
    assert 25.132741228718345 == Geom.area({:ellipse, 2, 4})
  end

  test "should return 0 if is not valid shape" do
    assert 0 == Geom.area({:ellipse, -1, 5})
  end
end