class AppointmentsController < ApplicationController
  before_action :authorize
  before_action :find_appointment, only: %i[show update destroy]

  def index
    @appointments = current_user.appointments

    render json: @appointments
  end

  def show
    render json: @appointment
  end

  def create
    @appointment = current_user.appointments.build(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    render json: { message: 'Appointment deleted' }, status: :ok
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.permit(:appointment_date, :doctor_id, :user_id)
  end
end
