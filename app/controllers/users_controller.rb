# frozen_string_literal: true

class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
		   redirect_to user_path, success:'檀家情報を更新しました'
		else
		  falsh[:danger] = "檀家情報の更新に失敗しました。空欄や全角半角等入力情報を確認してください"
		  render :edit
		end
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :first_name_kana, :fam_name, :fam_name_kana, :post_code, :address, :domicle, :email, :tel, :admin_id)
	end
end
