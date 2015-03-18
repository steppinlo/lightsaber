require 'sinatra'

# get '/' do
#   "Stephanie"
# end

#create
post '/sealions/:name' do
  Sealion.create(params[:name])
  redirect '/sealions'
end

get '/sealions' do
  'ARK ARK ARK!'
end

#read
get '/sealions/:name' do
  name = params[:name]
  "Your ID is #{name}"
end

#update
put '/sealions/:ID' do

  new_sealion = Sealion.find_by(params[:name])
  new_sealion.update_attribute(name: )

  redirect '/sealions'
end

#delete
delete '/sealions/:ID' do
  redirect '/sealions'
end
