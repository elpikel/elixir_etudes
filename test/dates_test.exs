defmodule DatesTest do
  use ExUnit.Case

  test "should split date by -" do
    assert Dates.get_parts("2013-06-15") == [2013, 6, 15]
  end
end