defmodule StatsTest do
  use ExUnit.Case

  test "takes a list of numbers as its argument and returns the smallest value" do
    assert Stats.minimum([1,2,3,4,5,6,7,-3]) == -3
  end

  test "takes a list of numbers as its argument and returns the largest value" do
    assert Stats.maximum([1,2,3,4,5,6,7,-3]) == 7
  end

  test "takes a list of numbers as its argument and returns a list containing the maximum and minimum values in the list" do
    assert Stats.range([1,2,3,4,5,6,7,-3]) == [-3, 7]
  end
end