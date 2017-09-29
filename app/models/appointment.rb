class Appointment < ApplicationRecord
	belongs_to :user
	belongs_to :trainer
	validates :user, :trainer, :location, presence: true
end
