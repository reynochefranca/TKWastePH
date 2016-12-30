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
  
  def destroy
   @edi_user = EdiUser.find(params[:id])
   @edi_user.destroy
   redirect_to action: "index"
  end
  
  def edit
   @edi_user = EdiUser.find(params[:id])
  end
  
  def update
     @edi_user = EdiUser.find(params[:id])
    if @edi_user.update_attributes(edi_user_params)
    redirect_to edi_users_path, :notice => "Ok na bes! sa wakas!"
  else
    render "edit"
    end
  end
  
  def destroy
   @edi_user = EdiUser.find(params[:id])
   @edi_user.destroy
   redirect_to action: "index"
  end
  
   
  private
    def edi_user_params
      params.require(:edi_user).permit(:subscriber_number, :connection_registration_number, :published_confirmation_number, :password, :registration_user1_name, :registration_user1_email, :registration_user2_name, :registration_user2_email, :registration_user3_name, :registration_user3_email)
    end
  
  
end