# frozen_string_literal: true

class EventsController < ApplicationController
	before_action :authenticate_user!

	def show
		@event = Event.find(params[:id])
		@user = User.find(params[:id])
		@admin = @user.admin
	end

	private
	def event_params
  	params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime, :time, :introduction, :comment, :image, :validity, :limit_count)
  end
end
