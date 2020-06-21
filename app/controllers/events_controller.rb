# frozen_string_literal: true

class EventsController < ApplicationController
	before_action :authenticate_user!

	def show
		@event = Event.find(params[:id])
		@user = current_user
		@admin = @user.admin
	end

	private
	def event_params
  	  params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime, :time, :introduction, :comment, :image, :validity, :limit_count)
    end

    def user_params
		params.require(:user).permit(:first_name, :first_name_kana, :fam_name, :fam_name_kana, :post_code, :address, :domicle, :email, :tel, :admin_id)
	end
end
