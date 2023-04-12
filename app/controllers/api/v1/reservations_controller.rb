class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = Reservation.where(user_id: current_user.id).all
    render json: @reservations
  end

  def create
    @reservation = Reservation.create(reserve_params)
    if @reservation.save!
      render json: { message: 'Created reservation successfully' }, status: :ok
    else
      render json: { error: 'Cannot create reservation' }, status: :unprocessable_entity
    end
  end

  def destroy
    Reservation.find_by(user_id: params[current_user.id]).destroy!
    render json: { message: 'Reservation deleted successfully' }, status: :ok
  end

  private

  def reserve_params
    params.require(:reservation).permit(:day, :time, :user_id, :course_id, :teacher_id)
  end
end
