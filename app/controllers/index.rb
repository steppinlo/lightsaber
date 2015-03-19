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
  "Your name is #{name}"
end

#update
put '/sealions/:name' do
  new_sealion = Sealion.find_by(params[:name])
  new_sealion.update_attribute()
  redirect '/sealions'
end

#delete
delete '/sealions/:name' do
  destroy Sealion.find_by(params[:name])
  redirect '/sealions'
end
