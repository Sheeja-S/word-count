require('rspec')
require('./lib/word_count')

describe('word_count') do

  it('takes the string as input and counts the frequency of target word in it') do
    expect("hello hello everyone".word_count("hello")).to(eq(2))
  end
end
