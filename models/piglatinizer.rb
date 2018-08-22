class PigLatinizer

  attr_accessor :piglatinized_text

  @@CONSTANT_CONSONANTS = ['bl', 'br', 'ch', 'cl', 'cr', 'dr', 'fl', 'fr', 'gl', 'gr', 'pl', 'pr', 'sc',
                          'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr',
                          'sch', 'scr', 'shr', 'sph', 'spl', 'spr' 'squ', 'str', 'thr']
  @@CONSTANT_VOWELS = ['a', 'e', 'i', 'o', 'u']

  @@appender = "ay"

  def initialize(text)
    @piglatinized_text = text
  end

  def piglatinizer
    new_phrase = []
    words = @piglatinized_text.split('')
    words.each do |word|
      if @@CONSTANT_VOWELS.include?(word[0])
        new_phrase >> word + appender
    end
  end

end
