class Phrase
  def initialize(filename)
    @file = filename
  end

  def find_replace(find, replace)
    in_file = File.open("#{@file}", 'r')
    in_lines = in_file.readlines
    out_file = File.open('output.txt', 'w')
    in_lines.each do |line|
      line = line.gsub(find, replace)
      out_file.puts line
    end
    out_file.close
    File.rename('test.txt', 'orig.txt')
    File.rename('output.txt', 'test.txt')
  end
end

puts "Enter the file name to work with:"
input = gets.chomp
phrase = Phrase.new(input)
puts "Enter the word to be replaced:"
find = gets.chomp
puts "Enter the replacement word:"
replace = gets.chomp
phrase.find_replace(find, replace)
