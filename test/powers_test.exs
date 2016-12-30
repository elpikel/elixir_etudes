defmodule PowersTest do
  use ExUnit.Case

  test "Any number to the power 0 equal 1" do
    assert Powers.rise(5, 0) == 1
  end

  test "Any number to the power 1 is that number itself" do
    assert Powers.rise(5, 1) == 5
  end

  test "When n is positive, xn is equal to x times x(n - 1)" do
    assert Powers.rise(2, 3) == 8
  end

  test "When n is negative, xn is equal to 1.0 / x-n" do
    assert Powers.rise(2, -3) == 0.125
  end
end