# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :admins

  validates :email, length: { minimum: 3, maximum: 80 }
  validates :fam_name, length: { minimum: 1, maximum: 15 }
  validates :fam_name_kana, length: { minimum: 1, maximum: 20 }
  validates :first_name, length: { minimum: 1, maximum: 15 }
  validates :first_name_kana, length: { minimum: 2, maximum: 20 }
  validates :post_code, length: { minimum: 3, maximum: 10 }
  validates :address, length: { minimum: 3, maximum: 50 }
  validates :domicle, length: { minimum: 3, maximum: 50 }
  validates :tel, length: { minimum: 3, maximum: 15 }
end
