class Phrase
  def initialize(input)
    @input = input
  end

  def find_replace(find, replace)
    words = @input.split(' ')
    replaced_words = []
    words.each do |word|
      if (word == find)
        replaced_words.push(replace)
      else
        replaced_words.push(word)
      end
    end
    return replaced_words.join(' ')
  end
end

puts "Enter a phrase to work with:"
phrase = Phrase.new(gets.chomp)
puts "Enter the word to be replaced:"
find = gets.chomp
puts "Enter the replacement word:"
replace = gets.chomp
puts(phrase.find_replace(find, replace))
