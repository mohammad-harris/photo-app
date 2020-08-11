class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :payment

  accepts_nested_attributes_for :payment
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
