require 'sinatra'

# get '/' do
#   "Stephanie"
# end

#create

get '/sealions/new' do
  erb :new
end

post '/sealions' do
  new_sealion = Sealion.new( name: params[:name],
                              location: params[:location],
                              quirk: params[:quirk])
  if new_sealion.save
    redirect "/sealions/#{new_sealion.id}"
  else
    [500, "You dun goofed"]
  end
end

get '/sealions/:id/edit' do
  sealion = Sealion.find_by(id: params[:id])
  erb :edit, locals:{curr_sealion: sealion}
end

get '/sealions' do
  # 'ARK ARK ARK!'
  @sealions = Sealion.all
  erb :index
end


#read
get '/sealions/:id' do
  id = params[:id]
  sealion = Sealion.find_by(id: id)
  erb :show, locals: {curr_sealion: sealion}
end

#update
put '/sealions/:id' do
  curr_sealion = Sealion.find_by(id: params[:id])
  if curr_sealion
    curr_sealion.name = params[:name]
    curr_sealion.location = params[:location]
    curr_sealion.quirk = params[:quirk]
    if curr_sealion.save
      redirect "/sealions/#{curr_sealion.id}"
    else
      [500, "You dun goofed"]
    end
  end
end

#delete
delete '/sealions/:id' do
  Sealion.find_by(params[:id]).destroy
  redirect '/sealions'
end
