require('rspec')
require('./lib/partial_word_count')

describe('partial_word_count') do

  it('takes the string as input and counts the frequency
      of target word including the target which is a part of another word') do
    expect("hello hello everyone hellojfffn".partial_word_count("hello")).to(eq(3))
  end
end
