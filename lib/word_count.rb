class String

  define_method(:word_count) do |target|
    words_array = self.split(' ')
    word_count = 0
    words_array.each() do |word|
      if target.==word
        word_count += 1
      end
    end
    word_count
  end
end
