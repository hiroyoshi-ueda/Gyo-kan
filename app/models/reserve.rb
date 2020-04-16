# frozen_string_literal: true

class Reserve < ApplicationRecord
  belongs_to :users
  belongs_to :events
end
