require('rspec')
require('find_replace')

describe ('#find_replace') do
  it "finds 'world' and replaces it with 'universe'" do
    phrase = Phrase.new('Hello world')
    expect(phrase.find_replace('world', 'universe').eql?('Hello universe'))
  end

  it "finds substring and replaces all instances" do
    phrase = Phrase.new('testing intesting test')
    expect(phrase.find_replace('test', 'pass').eql?('passing inpassing pass'))
  end
end
