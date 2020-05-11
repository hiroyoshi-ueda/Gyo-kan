# frozen_string_literal: true

class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
  	 # @user = User.find(params[:id])
  	 # @users = @user.admin
  	 @users = current_admin.users.order("fam_name_kana")
  	 # @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if
      @user.update(user_params)
      redirect_to admins_user_path(@user), success: '檀家情報を更新しました'
    else
      flash[:danger] = '檀家情報の更新に失敗しました。空欄や全角半角等入力情報を確認してください'
      render :edit
    end
  end


  private
  def user_params
		params.require(:user).permit(:id, :first_name, :first_name_kana, :fam_name, :fam_name_kana, :post_code, :address, :domicle, :email, :tel, :admin_id, :is_active)
  end

  def admin_params
    params.require(:admin).permit(:name, :name_kana, :post_code, :address, :email, :tel, :image)
    end

end
