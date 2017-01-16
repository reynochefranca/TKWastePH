class WasteRegsController < ApplicationController
  def index
    @waste_regs = WasteReg.all
    @waste_types = WasteReg.all.group(:waste_type)
    @units = WasteReg.all.group(:unit)
    @forms = WasteReg.all.group(:form)
    @packings = WasteReg.all.group(:packing)
  end
  
  def show
    @waste_reg = WasteReg.find(params[:id])
  end
  
  def new
    @waste_reg = WasteReg.new
  end
  
  def create
    @waste_reg = WasteReg.new(waste_reg_params)
    @waste_reg.save
    redirect_to waste_reg_path, notice:"Succesfully Registred!!"
  end
  
  def edit
    @waste_reg = WasteReg.find(params[:id])
  end
  
  def update
    @waste_reg= WasteReg.find(params[:id])

    if @waste_reg.update_attributes(waste_reg_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
    
   def destroy
     @waste_reg = WasteReg.find(params[:id])
     @waste_reg.destroy
     redirect_to action: "index"
   end
    
    
    
  private 
    def waste_reg_params
      params.require(:waste_reg).permit(:code,:name,:waste_type,:quantity,:unit,:form,:packing)
    end
end

