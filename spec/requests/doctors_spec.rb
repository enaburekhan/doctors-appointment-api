require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  before(:example) do
    @doctor = Doctor.create(name: 'Dr Osamu Akpede', specialization: 'Gynecologist', experience: '7 Years', image: 'https://image.freepik.com/free-vector/smiley-doctor-with-clipboard-stethoscope_23-2147657761.jpg')
  end

  it 'shows all doctors' do
    get '/api/v1/doctors'
    expect(response).to have_http_status(:ok)
  end

  it 'displays doctor information' do
    get "/api/v1/doctors/#{@doctor.id}"
    expect(response).to have_http_status(:ok)
  end
end
