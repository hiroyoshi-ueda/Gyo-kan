# frozen_string_literal: true

class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
  	# JSにeventデータを受け渡す為
  	gon.events = current_admin.events

    # カレンダーへのイベント非表示時の対応は安定しない為、一旦コメントアウト
    # データテーブルの並べ替え。日ごとで考える
    #  sortdata = current_admin.events.map do |event|
    # [event[:start_datetime].strftime("%Y%m%d").to_i,event[:start_datetime].strftime("%H%M").to_i,event[:title],event[:validity],event[:end_datetime]]
    # end.group_by{|i| i[0]}.map{|key,value| value}.each{|sort| sort.sort_by!{|x|[x[0],x[1]]}}

    # 配列の生成、初期化
     # array = []

    # 上のデータを並び替え
    # sortdata.each do |datas|
    #   count = 1
    #   datas.each do |data|
    #     array.push([count,data].flatten)
    #     count += 1
    #   end
    # end

    # unshiftを使って配列の先頭に要素を挿入
    # array.sort!
    # array.length.times do |i|
    #   array[i].unshift(i+1)
    # end

    # gon.make = array


  	# 当日分のイベントレコードを取り出す orderで開始日時順に並べる
  	@events = current_admin.events.where(start_datetime: Time.zone.now.all_day).order("start_datetime")
  end

  private

  def event_params
  	params.require(:event).permit(:admin_id, :title, :start_datetime, :end_datetime, :time, :introduction, :comment, :image, :validity, :limit_count)
  end
end
