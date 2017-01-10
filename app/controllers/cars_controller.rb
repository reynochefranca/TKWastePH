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
   
    @car.save
    redirect_to action: "index"
  end
  
  def destroy
   @car = Car.find(params[:id])
   @car.destroy
   redirect_to action: "index"
  end
  
  def edit
   @car = Car.find(params[:id])
  end
  
  def update
     @car = Car.find(params[:id])
    if @car.update_attributes(car_params)
    redirect_to cars_path, :notice => "Ok na bes! sa wakas!"
  else
    render "edit"
    end
  end
  
  private
    def car_params
      params.require(:car).permit(:car_type, :number)
    end
  
 
end