class UsersController < ApplicationController
	 before_action :authenticate_admin!
	
	def edit
		@user = User.find(params[:id])
	end

	def index
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		respond_to do |format|
		  if @user.update(user_params)
		    format.html { redirect_to @user, notice: 'User was successfully updated.' }
		  else
		    format.html { render :edit }
		  end
		end
	end

	private 

	# Use callbacks to share common setup or constraints between actions.
	def set_user
	  @user = User.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def user_params
	  params.require(:user).permit(:email, :admin_permission)
	end
end