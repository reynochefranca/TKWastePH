class EdiUsersController < ApplicationController
  def index
    @edi_users = EdiUser.all
  end
  
  def show 
    @edi_user = EdiUser.find(params[:id])
  end
  
  def new
    @edi_user = EdiUser.new
  end
  

  def create
    @edi_user = EdiUser.new(edi_user_params)
   
    @edi_user.save
    redirect_to action: "index"
  end
   
  private
    def edi_user_params
      params.require(:edi_user).permit(:registration_user1_name, :registration_user1_email, :subscriber_number, :connection_registration_number, :published_confirmation_number, :password)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

end
