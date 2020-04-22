# frozen_string_literal: true

class Admins::AdminsController < ApplicationController
  before_action :authenticate_admin!

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
  	@admin = Admin.find(params[:id])
  	if @admin.update(admin_params)
  		redirect_to admins_admin_path, success: '寺院情報を更新しました'
  	else
  	flash[:danger] = '寺院情報の更新に失敗しました。空欄や全角半角等入力情報を確認してください'
  	render :edit
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :name_kana, :post_code, :address, :email, :tel, :image)
    end
end
