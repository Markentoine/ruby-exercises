class PigLatin
  LAST_CHARACTERS = 'ay'.freeze
  def self.translate(word_or_phrase)
    if phrase?(word_or_phrase)
      translate_phrase(word_or_phrase)
    else
      translate_word(word_or_phrase)
    end
  end

  def self.phrase?(word_or_phrase)
    word_or_phrase.include?(' ')
  end

  def self.translate_word(word)
    if begins_with_vowel_sound(word)
      translate_vowel_sound_word(word)
    else
      translate_consonant_sound_word(word)
    end
  end

  def self.translate_phrase(phrase)
    phrase.split(' ').map do |word|
      translate_word(word)
    end.join(' ')
  end

  def self.begins_with_vowel_sound(word)
    special_case_vowel_sound = word[0, 2] =~ /yt/i ||
                               word[0] =~ /x/i && word[1] !~ /[aeiou]/i
    word[0] =~ /[aeiou]/i || special_case_vowel_sound
  end

  def self.begins_with_consonant_sound(word)
    word[0] !~ /[aeiou]/i
  end

  def self.translate_vowel_sound_word(word)
    word + LAST_CHARACTERS
  end

  def self.translate_consonant_sound_word(word)
    word = shift_leading_consontant_to_back_of_word(word) while
     begins_with_consonant_sound(word)
    word + LAST_CHARACTERS
  end

  def self.shift_leading_consontant_to_back_of_word(word)
    special_case_consonant_sound = word[0, 2] =~ /qu/i
    if special_case_consonant_sound
      word[2..-1] + word[0, 2]
    else
      word[1..-1] + word[0]
    end
  end
end
