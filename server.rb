#server.rb
require 'sinatra'

get '/' do
  File.open("public/hello.txt").read
end


get '/wyncode' do
  "Hello World"
end

get '/hello' do
	"Hello Bella and Mateo!"
end