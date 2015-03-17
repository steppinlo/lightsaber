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

  it 'should get the /sealions/:ID route' do
    get '/sealions/:ID?id=6'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Your ID is 6")
  end

  it 'should redirect post to /sealions' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end

  it 'should redirect put to /sealions' do
    put '/sealions/:ID'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end

  it 'should redirect delete to /sealions' do
    delete '/sealions/:ID'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('ARK ARK ARK!')
  end
end
