class Users::AdminsController < ApplicationController
	def show
		@admin = Admin.find(params[:id])
	end

	private
    def admin_params
      params.require(:admin).permit(:name, :name_kana, :post_code, :address, :email, :tel, :image)
    end
end
