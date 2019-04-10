class PigLatinizer
  attr_reader :words

  # check for consonants
  def is_consonant?(letter)
    (/[aeiou]/i).match(letter).nil?
  end

  def piglatinize(word)
    transformed = ''
    if !is_consonant?(word[0])
      transformed = word + "way"
    elsif is_consonant?(word[0]) && is_consonant?(word[1]) && is_consonant?(word[2])
      transformed = word.slice(3..-1) + word.slice(0..2) + 'ay'
    elsif is_consonant?(word[0]) && is_consonant?(word[1])
      transformed = word.slice(2..-1) + word.slice(0..1) + 'ay'
    else
      transformed = word.slice(1..-1) + word.slice(0..0) + 'ay'
    end
    transformed
  end
  

  #method to transform word
  #method loop split the text in words, map through the text and call the transform word
  # to each word
