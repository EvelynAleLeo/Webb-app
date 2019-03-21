require 'sinatra'

get '/' do
  "Hi there"
end

get '/secret' do
  "Testing live changes"
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  @color = params[:color]
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end