require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'creates a user if given valid params' do
    post '/api/v1/users', params: { username: 'test_user', password: '123456', age: 35 }
    expect(response).to have_http_status(:created)
  end

  it 'does not create a user if not given params' do
    post '/api/v1/users'
    expect(response).to have_http_status(:not_acceptable)
  end
end
