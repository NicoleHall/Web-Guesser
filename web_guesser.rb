require 'sinatra'
require 'sinatra/reloader'

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:static => STATIC, :guess => guess, :message => message}
end

STATIC = Random.new.rand(100)

def check_guess(guess)
  if guess.to_i > STATIC
    "#{guess} is too high"
  elsif guess.to_i < STATIC
    "#{guess} is too low"
  elsif guess.to_i == STATIC
    "Correct!"
  end
end
