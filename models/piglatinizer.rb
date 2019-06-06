
class Piglatinizer

  def piglatinize_word(word)
    a = ["ay"]
    split_word = word.split("")
    consonants = []
    until split_word.first.match?(/[AaEeIiOoUu]/)
      consonants << split_word.shift
    end

    piglatin = split_word + consontants + a
    piglatin.join("")

  end

    def piglatinize_phrase(phrase) 
      if phrase.split(" ").length == 1
        phrase.piglatinize_word
      else
        words_array = phrase.split(" ")
        words_array.collect do |word|
          phrase_array = []
          phrase_array << word.piglatinize_word
          words_array.join(" ")
        end
    end
  end


          end
