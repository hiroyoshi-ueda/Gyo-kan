# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :reserves
  belongs_to :admin

  attachment :image
end
