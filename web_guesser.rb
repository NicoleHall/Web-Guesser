require 'sinatra'
require 'sinatra/reloader'

static = Random.new.rand(100)

get '/' do
  "the SECRET NUMBER is #{static}"
end
