require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
require('./lib/partial_word_count')
also_reload('lib/*.rb')

get('/') do
  erb(:form)
end

get('/display') do
  @text = params.fetch('text')
  @word = params.fetch('target')
  @result = @text.word_count(@word)
  @newresult = @text.partial_word_count(@word)
  erb(:display)
end
