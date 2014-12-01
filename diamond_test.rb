require "minitest/autorun"

require "diamond"

describe Diamond do
  it "is hooked up" do
    assert_equal 3, 2+1
  end

  it "builds a diamond for A" do
    exp = "A"
    assert_equal exp, Diamond.new("A").to_s
  end

  it "builds a diamond for B" do
    exp = " A \nB B\n A "
    assert_equal exp, Diamond.new("B").to_s
  end

  it "builds a diamond for C" do
    exp = "  A  \n B B \nC   C\n B B \n  A  "
    assert_equal exp, Diamond.new("C").to_s
  end

  it "builds a row for (A, A)" do
    assert_equal "A", Diamond.new("A").row("A")
  end

  it "builds a row for (B, A)" do
    assert_equal " A ", Diamond.new("B").row("A")
  end

  it "builds a row for (B, B)" do
    assert_equal "B B", Diamond.new("B").row("B")
  end

  it "builds a row for (C, B)" do
    assert_equal " B B ", Diamond.new("C").row("B")
  end

  it "builds a row for (D, B)" do
    assert_equal "  B B  ", Diamond.new("D").row("B")
  end
end
