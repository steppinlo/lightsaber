require_relative '../spec_helper'

describe 'Index Controller' do

  it 'should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Stephanie')
  end

  it 'should get the /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK')
  end

  it 'should get the /sealions/:id route' do
    get '/sealions/:id'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Making it 6!")
  end

  it 'should redirect post to /sealions' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end

  it 'should redirect put to /sealions' do
    put '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end

  it 'should redirect delete to /sealions' do
    delete '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end
end
