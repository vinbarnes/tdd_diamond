class Diamond
  ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  attr_reader :target, :letters

  def initialize(letter)
    @target = letter
    @letters = ("A"..@target).to_a
  end

  def rows
    letters.map {|l| row(l) } + letters.reverse[1..-1].map {|l| row(l)}
  end

  def row_without_padding(letter)
    unless letter == "A"
      "%c%#{internal_padding(letter) + 1}c" % [letter, letter]
    else
      "A"
    end
  end

  def letter_index(letter)
    ALPHABET.index(letter)
  end

  def internal_padding(letter)
    if letter_index(letter) > 0
      letter_index(letter) + (letter_index(letter) - 1)
    else
      0
    end
  end

  def row(letter)
    row_without_padding(letter).center(width)
  end

  def width
    (letter_index(target) * 2) + 1
  end

  def to_s
    rows.join("\n")
  end
end
