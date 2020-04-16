# frozen_string_literal: true

class Admins::AdminsController < ApplicationController
	before_action :authenticate_admin!

	def show
		@admin = Admin.find(params[:id])
	end

	def edit
	end

	def update
	end

	private
	  def admin_params
	  	params.reqire(:admin).permit(:name, :name_kana, :post_code, :email, :tel)
	  end

end
