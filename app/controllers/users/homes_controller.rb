class Users::HomesController < ApplicationController
	before_action :authenticate_user!
	def top
 	gon.events = current_user.admin.events
	end
end
