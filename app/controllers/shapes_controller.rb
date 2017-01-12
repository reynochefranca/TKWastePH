class ShapesController < ApplicationController
  def index
    @shapes = Shape.all
  end
  
  def show
     @shape = Shape.find(params[:id])
  end
  
  def new
    @shape = Shape.new
  end

  def create
    @shape = Shape.new(shape_params)
    
    if @shape.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @shape = Shape.find(params[:id])
  end
  
  def update
    @shape = Shape.find(params[:id])

    if @shape.update_attributes(shape_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @shape = Shape.find(params[:id])
    @shape.destroy
    redirect_to action: "index"
  end
  
  private
    def shape_params
      params.require(:shape).permit(:code, :name)
    end 

end
      
