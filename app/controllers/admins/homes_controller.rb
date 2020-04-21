# frozen_string_literal: true

class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
  	gon.events = Event.all
  end
end
