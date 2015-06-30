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

	

get '/stock_ticker' do
	require 'HTTParty'
	require 'nokogiri'

	response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')

	dom = Nokogiri::HTML(response.body)

	list_of_results = dom.xpath("//span[@id='yfs_l84_aapl']")
	result = list_of_results.first
	
	"The current price of APPL is $#{result.text}."
end
