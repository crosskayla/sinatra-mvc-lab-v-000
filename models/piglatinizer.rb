class PigLatinizer

  attr_accessor :text

  @@CONSTANT_CONSONANTS = ['bl', 'br', 'ch', 'cl', 'cr', 'dr', 'fl', 'fr', 'gl', 'gr', 'pl', 'pr', 'sc',
                          'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr',
                          'sch', 'scr', 'shr', 'sph', 'spl', 'spr' 'squ', 'str', 'thr']
  @@CONSTANT_VOWELS = ['a', 'e', 'i', 'o', 'u']

  def initialize(text)
    @piglatinized_text = text
  end




end
