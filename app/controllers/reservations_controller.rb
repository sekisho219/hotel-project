class ReservationsController < ApplicationController
	 def new
       @hotel = Hotel.find(params[:hotel_id])
       @reservation = @hotel.reservations.build
     end

    def create
      @hotel = Hotel.find(params[:hotel_id])
      @reservation = Reservation.new(reservation_params)

       if @reservation.save
           redirect_to reservation_path(@reservation)
       end
    end

  def show
    @hotel = Hotel.find(params[:hotel_id])
     @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :checkin, :checkout, :transport, :number, :hotel_id)
  end
end