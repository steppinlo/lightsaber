require 'sinatra'

# get '/' do
#   "Stephanie"
# end

#create
post '/sealions' do
  Sealion.create(params)
  redirect '/sealions'
end

get '/sealions' do
  'ARK ARK ARK!'
end

#read
get '/sealions/:name' do
  name = params[:name]
  "Your name is #{name}"
end

#update
put '/sealions/:id' do
  updated_feat = params[:name]
  new_sealion = Sealion.find(params[:id])
  new_sealion.update_attributes(params)
  redirect '/sealions'
end

#delete
delete '/sealions/:name' do
  Sealion.find(params[:name]).destroy
  redirect '/sealions'
end
