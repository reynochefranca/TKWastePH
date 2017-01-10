class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end
  
  def show 
  end
  
  def new
    @user = User.new
  end
  
  def edit
  end
  
  def create
    @user = User.new(user_params)
    @user.save
       redirect_to @users, notice: 'User was successfully created.'
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url, notice: 'User was successfully updated.' }
        
      else
        format.html { render :edit }
   
      end
    end
  end
   
  private
  
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end