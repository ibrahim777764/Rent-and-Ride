class Api::V1::BookingsController < ApiController


   def show
        user = User.find(params[:id])
        booking= user.bookings
        if booking
            render json: booking.to_json(include: [:car]), status: 200
        end
    end

   def new
   end
   def create
        booking = Booking.new(booking_params)
        if booking.save
             render json: booking, status: 200
        else
             render json: booking.errors, status: :unprocessable_entity
        end
   end

    def destroy
        booking = Booking.find_by(id: params[:id])
        if booking
            booking.destroy
            render json: 'Booking deleted successfully'
        else
            render json: {
                error: 'Booking Not Found'
            }
        end
    end

    private

    def booking_params
        params.permit(:car_id, :start_date, :end_date, :city, :user_id)
    end
end