require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message}
end

def check_guess(guess)
	if guess.to_i - NUMBER > 5
		"Way too High!"
	elsif guess.to_i - NUMBER < -5
		"Way too Low!"
	elsif guess.to_i > NUMBER
		"Too High!"
	elsif guess.to_i < NUMBER
		"Too Low!"
	else
		"You got it right! The SECRET NUMBER is #{NUMBER}"
	end
end
