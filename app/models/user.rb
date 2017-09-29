class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :appointments, dependent: :destroy
  has_many :trainers, through: :appointments
  # has_many :trainers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
