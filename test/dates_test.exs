defmodule DatesTest do
  use ExUnit.Case

  test "should split date by -" do
    assert Dates.get_parts("2013-06-15") == [2013, 6, 15]
  end

  test "returns the Julian date: the day of the year" do
    assert Dates.julian("2013-12-31") == 365
    assert Dates.julian("2012-12-31") == 366
  end
end
