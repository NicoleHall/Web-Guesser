require 'sinatra'
require 'sinatra/reloader'

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:static => STATIC, :guess => guess, :message => message}
end

STATIC = Random.new.rand(100)

def check_guess(guess)
  if guess == '' || guess == nil
    "please enter guess"
  elsif (guess.to_i - STATIC) > 5
    "#{guess} is way too high"
  elsif (STATIC - guess.to_i) > 5
    "#{guess} is way too low"
  elsif guess.to_i > STATIC
    "#{guess} is too high"
  elsif guess.to_i < STATIC
    "#{guess} is too low"
  elsif guess.to_i == STATIC
    "Correct!"
  end
end
