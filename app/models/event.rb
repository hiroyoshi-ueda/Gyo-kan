# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :reserves
  belongs_to :admin

  attachment :image

  validates :title, length: { minimum: 2, maximum: 25 }
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :time, length: { minimum: 1, maximum: 3 }
  validates :introduction, length: { minimum: 2, maximum: 200}

end
