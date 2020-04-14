class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users

  validates :name, length: {minimum: 3, maximum: 20}
  validates :name_kana, length: {minimum: 3, maximum: 30}
  validates :post_code, length: {minimum: 3, maximum: 10}
  validates :address, length: {minimum: 3, maximum: 50}
  validates :email, length: {minimum: 3, maximum: 80}
  validates :tel, length: {minimum: 3, maximum: 15}

end
