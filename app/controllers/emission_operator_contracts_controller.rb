class EmissionOperatorContractsController < ApplicationController
  def index
  end
  def show
    @unit = Unit.show
  end
  
  def index
    @units = Unit.all
  end
  
private
  def unit_params
      params.require(:unit).permit(:code, :name)
  end
end
