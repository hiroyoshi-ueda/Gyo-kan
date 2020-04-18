# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :reserves
  belongs_to :admins

  attachment :image
end
