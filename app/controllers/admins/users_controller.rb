# frozen_string_literal: true

class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
  	 # @user = User.find(params[:id])
  	 # @users = @user.admin
  	 @users = current_admin.users
  	 # @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit; end

  def update; end


  private
  def user_params
		params.require(:user).permit(:id, :first_name, :first_name_kana, :fam_name, :fam_name_kana, :post_code, :address, :domicle, :email, :tel, :admin_id)
  end

  def admin_params
    params.require(:admin).permit(:name, :name_kana, :post_code, :address, :email, :tel, :image)
    end

end
