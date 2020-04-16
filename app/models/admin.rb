# frozen_string_literal: true

class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users
  has_many :events

  validates :name, length: { minimum: 2, maximum: 20 }
  validates :name_kana, length: { minimum: 2, maximum: 30 }
  validates :post_code, length: { minimum: 2, maximum: 10 }
  validates :address, length: { minimum: 2, maximum: 50 }
  validates :email, length: { minimum: 2, maximum: 80 }
  validates :tel, length: { minimum: 2, maximum: 15 }
end
