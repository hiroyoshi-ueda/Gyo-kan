# frozen_string_literal: true

class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
  	# JSに受け渡す為
  	gon.events = current_admin.events
  	# 当日分のイベントレコードを取り出す
  	@events = current_admin.events.where(created_at: Time.zone.now.all_day)
  end

  private

  def event_params
  	params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime, :time, :introduction, :comment, :image, :validity, :limit_count)
  end
end
