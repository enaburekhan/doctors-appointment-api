require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  # Test suite for POST /appointments
  describe 'POST /api/v1/appointments' do
    # valid payload
    let(:valid_attributes) { { appointment_date: 20 / 0o7 / 2021 } }

    context 'when the request is valid' do
      before { post '/api/v1/appointments', headers: 'Bearer jwt' params: valid_attributes }

      it 'creates an appointment' do
        expect(json['appointment_date']).to eq(20 / 0o7 / 2021)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/appointments', params: { appointment_date: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Appointment date can't be blank/)
      end
    end
  end
end
