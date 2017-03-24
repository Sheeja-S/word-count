class String
  define_method(:partial_word_count) do |substring|
    array = self.split(' ')
    count = 0
    array.each() do |word|
      if (word.include?(substring))
        count += 1
      end
    end
    count
  end
end
