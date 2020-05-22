require "exercism/version"

module Exercism
  class TwoFer;
    def initialize(name)
      @name = name
    end

    def check_sentance
      @name.empty? ? 'One for you, one for me.' : "One for #{@name}, one for me."
    end
  end

  class Acronym
    def initialize(phrase)
      @phrase = phrase
    end

    def make_acronym
      acronym = @phrase[0] if @phrase[0] != ' '
      (0..@phrase.length - 1).each do |i|
        acronym += @phrase[i + 1].upcase if @phrase[i] == ' '
      end
      acronym
    end
  end

  class HighScore
    def initialize(scores)
      @scores = scores
    end

    def three_highest_scores
      high_scores[0..2]
    end

    def last_added
      @scores.last
    end

    def high_score
      high_scores[0]
    end

    def high_scores
      @scores.sort.reverse
      # scores1 = @scores
      # scores2 = @scores
      # print "vlezen @scores #{@scores}"
      # puts
      # (0..scores1.length - 1).each do |i|
      #   (i + 1..scores1.length - 1).each do |j|
      #     next unless scores1[i] < scores1[j]
      #     score = scores1[j]
      #     scores1[j] = scores1[i]
      #     scores1[i] = score
      #     print "izlezen @scores #{@scores}"
      #     puts i, j
      #   end
      # end
      # print "izlezen @scores1 #{@scores} , #{scores2}"
      # puts
      # scores1
    end
  end

  class Series
    def initialize(string_of_digits, num_of_digits)
      @string_of_digits = string_of_digits
      @num_of_digits = num_of_digits
    end

    def series
      substrings = []
      (0..@string_of_digits.length - @num_of_digits).each do |i|
        substrings << @string_of_digits[i, @num_of_digits]
      end
      substrings
    end
  end

  class WordCount
    def initialize(phrase)
      @phrase = phrase
    end

    def words
      @phrase.split
    end

    def word_count
      counted_words = {}
      words.uniq.each do |word|
        counted_words[word] = words.count(word)
      end
      counted_words
    end
  end
  class Hamming
    def initialize (dna_strand1, dna_strand2)
      @dna_strand1 = dna_strand1
      @dna_strand2 = dna_strand2
    end

    def same_length
      @dna_strand1.length == @dna_strand2.length
    end

    def check_dna_strands
      if same_length
        distance = 0
        (0..@dna_strand1.length-1).each do |n|
          distance += 1 if @dna_strand1[n] != @dna_strand2[n]
        end
      else
        distance = "sequences haven't equal length"
      end
      distance
    end
  end
end
