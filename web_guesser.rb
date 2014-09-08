require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@rand_num = rand(100)
  "The secret number is: #{@rand_num}"
end
