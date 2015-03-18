require 'sinatra'

# get '/' do
#   "Stephanie"
# end

#create
post '/sealions' do
  redirect '/sealions'
end

get '/sealions' do
  'ARK ARK ARK!'
end

#read
get '/sealions/:ID' do
  id = params[:id]
  "Your ID is #{id}"
end

#update
put '/sealions/:ID' do
  redirect '/sealions'
end

#delete
delete '/sealions/:ID' do
  redirect '/sealions'
end
