require "minitest/autorun"

require "diamond"

describe Diamond do
  it "supports simplest case" do
    exp = [["A"]]
    assert_equal exp, Diamond.new("A").to_a
  end
end
