class UsersController < ApplicationController
	before_action :set_user, only: %i(edit update show)

	def show
	end

	def edit
	end

	def update
		if @user.update_attributes(list_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private
	def set_user
		@user = User.find_by(id: params[:id])
	end

	def list_params
		params.require(:user).permit(:name)
	end
end
