class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  
  def show 
    @car = Car.find(params[:id])
  end
  
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    
    if @car.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
   @car = Car.find(params[:id])
  end
  
  def update
    @car= Car.find(params[:id])

    if @car.update_attributes(car_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to action: "index"
  end
  
  private
    def car_params
      params.require(:car).permit(:car_type, :number)
    end
end