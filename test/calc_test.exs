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

  test "when m == n then greatest common divisor is m" do
    assert 22 == Calc.gdc(22, 22)
  end

  test "greatest common divisor of 2 and 8 is 2" do
    assert 2 == Calc.gdc(2,8)
  end

  test "greatest common divisor of 14 and 21 is 7" do
    assert 7 == Calc.gdc(14, 21)
  end

  test "greatest common divisor of 125 and 46 is 1" do
    assert 1 == Calc.gdc(125, 46)
  end

  test "greatest common divisor of 120 and 36 is 1" do
    assert 12 == Calc.gdc(120, 36)
  end
end