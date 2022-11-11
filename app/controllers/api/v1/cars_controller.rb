class Api::V1::CarsController < ApplicationController
  # GET /api/v1/cars
  # GET /api/v1/cars.json
  def index
    cars = Car.all
    render json: cars, status: 200
  end

  # GET /api/v1/cars/1
  # GET /api/v1/cars/1.json
  def show
    car = Car.find_by(id: params[:id])
    if car
      render json: car, status: 200
    else
      render json: car.errors, status: :unprocessable_entity
    end 
  end

  # POST /api/v1/cars
  # POST /api/v1/cars.json
  def create
    car = Car.new(
      name: car_params[:name],
      description: car_params[:description] ,
      price: car_params[:price],
      duration: car_params[:duration],
      image: car_params[:image],
      location: car_params[:location]
    )

    if car.save
      render json: car, status: 200
    else
      render json: car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/cars/1
  # PATCH/PUT /api/v1/cars/1.json
  def update
    car = Car.find_by(id: params[:id])

    if car
      car.update(car_params)
      render json: "Car information updated successfully "
    else
      render json: {
        error: "Car Not Found"
      }
    end
  end

  # DELETE /api/v1/cars/1
  # DELETE /api/v1/cars/1.json
  def destroy
    car = Car.find_by(id: params[:id])
    if car 
    car.destroy
    render json: "Car deleted successfully"
    else
    render json: { error: "Car Not Found" }
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit([
        :name,
        :description,
        :price,
        :duration,
        :image,
        :location
      ]) 
    end
end
