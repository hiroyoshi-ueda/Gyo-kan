class Users::AdminsController < ApplicationController
	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
		@admin = @user.admin
	end

	private

    def admin_params
      params.require(:admin).permit(:id, :name, :name_kana, :post_code, :address, :email, :tel, :image)
    end

end
