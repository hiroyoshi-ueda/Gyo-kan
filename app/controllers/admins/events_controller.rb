# frozen_string_literal: true

class Admins::EventsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@event = Event.new
    @events = current_admin.events.order("start_datetime DESC")
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  	   redirect_to admins_events_path, success:'新しい行持が作成されました'
  	else
  	  @events = Event.all
  	  flash[:danger] = '新規行持の作成に失敗しました。入力情報を確認してください'
  	  render :index
  	end
  end

  def update
  	@event = Event.find(params[:id])
  	if @event.update(event_params)
  	   redirect_to admins_event_path, success:'行持情報が更新されました'
  	else
  		flash[:danger] = '行持の情報更新に失敗しました。編集内容を確認してください'
  		render :edit
  	end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admins_events_path
  end


  private

  def event_params
  	params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime,  :introduction, :comment, :image, :validity, :limit_count)
  end
end
