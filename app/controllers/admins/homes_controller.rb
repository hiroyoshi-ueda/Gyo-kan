# frozen_string_literal: true

class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
  	gon.events = current_admin.events
  end

  private

  def event_params
  	params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime, :time, :introduction, :comment, :image, :validity, :limit_count)
  end
end
