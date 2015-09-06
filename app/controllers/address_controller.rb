class AddressController < ApplicationController
  before_action :logged_in_user
  
  def index
    @user_id = current_user.id
    @Address = Address.all
  end
  
  def new
    @address = Address.new
  end
  
  
  def create
    @address_param = params[:address]
    @address = Address.new(address_params)
    p "-------------"
    p @address
    
    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'User was successfully created.' }
      else
        format.html { render :bong }
      end
    end

  end
  
  private 
  
    def address_params
      params.require(:address).permit(:user_id, :name, :email, :business_phone, :home_phone, :business_address, :home_address, :notes)
    end
end
