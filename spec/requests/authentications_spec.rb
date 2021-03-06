require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
  before(:example) do
    @user = User.create(username: 'test_user', password: '123456', age: 35)
  end

  it 'It authenticates an existing user' do
    post '/api/v1/authentications', params: { username: 'test_user', password: '123456', age: 35 }
    expect(response).to have_http_status :ok
  end

  it 'does not authenticate a user if one of the attributes is invalid' do
    post '/api/v1/authentications', params: { username: 'test_user', password: 'enab', age: 35 }
    expect(response).to have_http_status :not_acceptable
  end
end
