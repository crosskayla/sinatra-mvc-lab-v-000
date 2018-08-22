require 'pry'

class PigLatinizer

  attr_accessor :piglatinized_text

  @@CONSTANT_2L_CONSONANTS = ['bl', 'br', 'ch', 'cl', 'cr', 'dr', 'fl', 'fr', 'gl', 'gr', 'pl', 'pr', 'sc',
                          'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr']
  @@CONSTANT_3L_CONSONANTS = ['sch', 'scr', 'shr', 'sph', 'spl', 'spr' 'squ', 'str', 'thr']
  @@CONSTANT_VOWELS = ['a', 'e', 'i', 'o', 'u']

  @@appender = "ay"

  def initialize(text)
    @piglatinized_text = text
  end

  def analyze
    new_phrase = []
    words = @piglatinized_text.split(" ")
    words.each do |word|
      if @@CONSTANT_VOWELS.include?(word[0])
        new_phrase << word + @@appender
      elsif @@CONSTANT_2L_CONSONANTS.include?(word[0..1])
        new_phrase << word[2..-1] + word[0..1] + @@appender
      elsif @@CONSTANT_3L_CONSONANTS.include?(word[0..2])
        new_phrase << word[3..-1] + word[0..2] + @@appender
      end
      puts word
    end

    new_phrase.join(" ")

  end

end
