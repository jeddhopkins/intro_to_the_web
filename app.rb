require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "My secret is i am a vegan"
end

get '/sport' do
  erb "The score is <%= 5 + 3 + 7%>"
end

get '/food' do
  "<div style='border: 70px ridge blue'>
  <img src='https://www.maxim.com/.image/t_share/MTU0ODMxNDYyMTkxODY3NDY2/steakpromo.jpg'>
  </div>"
end

get '/random-cat' do
  @name = ["Katie", "Chloe", "Jedd"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
