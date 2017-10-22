class BeerSong
  def initialize
    @main_verse = MainVerse.new
    @verse_two = VerseTwo.new
    @verse_one = VerseOne.new
    @verse_zero = VerseZero.new
  end

  def lyrics
    verses(99,0)
  end

  def main_verse(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\n" \
      "Take one down and pass it around, #{number_of_bottles - 1} bottles of beer on the wall.\n"
  end

  def verses(start, stop = start)
    song = ''
    start.downto([stop, 3].max) do |bottles|

      song << verse(bottles)+"\n"
    end
    song = song.chomp
  end

  private

  attr_reader :number_of_bottles
end

class MainVerse < BeerSong
  def verse(number_of_bottles)
    main_verse(number_of_bottles)
  end
end

class VerseTwo < BeerSong
  def verse(number)
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end

class VerseOne < BeerSong
  def verse(number)
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end

class VerseZero < BeerSong
  def verse(number)
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
