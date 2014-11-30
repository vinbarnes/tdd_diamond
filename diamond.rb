class Diamond
  ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  attr_reader :target, :letters

  def initialize(letter)
    @target = letter
    @letters = ("A"..@target).to_a
  end

  def rows
    @rows ||= build_rows
  end

  def build_rows
    if target == "A"
      [letters]
    end
  end

  def to_a
    rows
  end
end
