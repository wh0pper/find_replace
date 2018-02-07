class Phrase
  def initialize(input)
    @input = input
  end

  def find_replace(find, replace)
    result = @input.gsub(find, replace)
  end
end

puts "Enter a phrase to work with:"
phrase = Phrase.new(gets.chomp)
puts "Enter the word to be replaced:"
find = gets.chomp
puts "Enter the replacement word:"
replace = gets.chomp
puts(phrase.find_replace(find, replace))
