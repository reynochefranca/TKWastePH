class CategoriesController < ApplicationController

  
  def index
    @categories = Category.all
  end

  def show
     @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(categories_params)
    
    if @category.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category= Category.find(params[:id])

    if @category.update_attributes(categories_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
    
   def destroy
     @category = Category.find(params[:id])
     @category.destroy
     redirect_to action: "index"
   end
  
  private
    def categories_params
      params.require(:category).permit(:code, :name)
    end
end
