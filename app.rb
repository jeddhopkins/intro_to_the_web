require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "My secret is i am a vegan"
end

get '/sport' do
  "football"
end

get '/food' do
  "<div>
  <img src='https://i.dailymail.co.uk/i/pix/2018/02/02/18/48D3379500000578-5345305-image-a-16_1517595669475.jpg'
  </div>"
end

get '/cat' do
  "<div>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end
