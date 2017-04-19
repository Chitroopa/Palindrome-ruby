require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @palindrome = params.fetch('word').palindrome()
  erb(:result)
end
