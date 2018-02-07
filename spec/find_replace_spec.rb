require('rspec')
require('find_replace')

describe ('#find_replace') do
  it "finds 'world' and replaces it with 'universe'" do
    phrase = Phrase.new('Hello world')
    expect(phrase.find_replace('world', 'universe').eql?('Hello universe'))
  end
end
