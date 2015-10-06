require 'sinatra'
require 'sinatra/reloader'

static = Random.new.rand(100)

get '/' do
  erb :index, :locals => {:static => static}

end
