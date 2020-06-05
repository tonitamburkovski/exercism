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

    def check_dna
      @dna_strand1.length == @dna_strand2.length ? check_dna_strands : "sequences haven't equal length"
    end

    def check_dna_strands
      distance = 0
      (0..@dna_strand1.length - 1).each do |n|
        distance += 1 if @dna_strand1[n] != @dna_strand2[n]
      end
      distance
    end
  end

  class Raindrops
    def initialize (number)
      @number = number
    end

    def pling
      (@number % 3).zero? ? 'Pling' : ''
    end

    def plang
      (@number % 5).zero? ? pling + 'Plang' : pling
    end

    def plong
      (@number % 7).zero? ? plang + 'Plong' : plang
    end

    def check_number
      plong.empty? ? @number.to_s : plong
    end
  end

  class Isogram
    def initialize (phrase)
      @phrase = phrase
    end

    def delete_hyphens
      @phrase.delete('-')
    end

    def delete_spaces
      delete_hyphens.delete(' ')
    end

    def determine
      delete_spaces.size == delete_spaces.chars.uniq.size
    end
  end

  class ScrableScore
    VALUES = {
      1 => %w[a e i o u l n r s t],
      2 => %w[d g],
      3 => %w[b c m p],
      4 => %w[f h v w y],
      5 => %w[k],
      8 => %w[j x],
      10 => %w[q z]
    }

    def initialize(word)
      @word = word
    end

    def score
      score = 0
      VALUES.each do |key, value|
        n = 0
        value.each do |letter|
          n += @word.count(letter)
        end
        score += n * key
      end
      score
    end
  end

  class Luhn
    def initialize(string)
      @string = string.delete(' ')
    end

    def simple_check
      @string.length > 1 && !@string.match?(/[^0-9 ]/) && check_luhn
    end

    private

    def string_to_array
      @string.delete(' ').chars.map(&:to_i)
    end

    def reverse_array
      string_to_array.reverse
    end

    def do_math(value, index)
      if index.odd?
        value *= 2
        value -= 9 if value > 9
      end
      value
    end

    def check_luhn
      suma = 0
      reverse_array.each_with_index do |value, index|
        suma += do_math(value, index)
      end
      (suma % 10).zero?
    end
  end

  class Clock
    def initialize(time, minutes)
      @time = time
      @minutes = minutes
    end

    def new_time
      "#{hour}:#{minutes[1]}"
    end

    private
    
    def hour
      hour = @time[0, 2].to_i + minutes[0]
      if hour == 24
        hour = 0
      elsif hour == -1
        hour = 23
      end
      hour = "0#{hour}" if hour < 10
      hour
    end

    def hour_minutes
      hour = 0
      minutes = @time[3, 2].to_i + @minutes.to_i
      if minutes > 60
        minutes -= 60
        hour = 1
      elsif minutes.negative?
        minutes = 60 + minutes
        hour = -1
      end
      [hour, minutes]
    end

    def minutes
      hour = hour_minutes[0]
      minutes = hour_minutes[1]
      minutes = "0#{minutes}" if minutes >= 0 && minutes <= 9
      [hour, minutes]
    end
  end
end
