require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  before(:example) do
    @user = User.create(username: 'test_user', password: '1234', age: 35)
    @appointment = Appointment.create(appointment_date: 20 / 0o7 / 2021, doctor_id: 1, user_id: 1)
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'shows all appointments' do
    get '/api/v1/appointments', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'displays appointment information' do
    get "/api/v1/appointments/#{@appointment.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
