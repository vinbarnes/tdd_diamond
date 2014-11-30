class Diamond
  ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  attr_reader :target, :letters, :rows

  def initialize(letter)
    @target = letter
    @letters = ("A"..@target).to_a
    @rows = []
  end

  def build_diamond
    @rows = if target == "A"
      [letters]
    end
  end

  def to_a
    build_diamond
    rows
  end
end
