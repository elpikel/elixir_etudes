defmodule CalcTest do
  use ExUnit.Case
  doctest Calc

  test "sums up 3 numbers" do
    assert 66 == Calc.sum(11, 22, 33)
  end

  test "takes last one as default" do
    assert 40 == Calc.sum(11, 22)
  end

  test "sets default values for missing params" do
    assert 21 == Calc.sum(11)
  end
end