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
   
    @shape.save
    redirect_to action: "index"
  end
   
  private
    def shape_params
      params.require(:shape).permit(:code, :name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

  
  
end
