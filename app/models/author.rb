class Author < ApplicationRecord
	validates :size, inclusion: { in: %w(small medium large),message: "%{value} is not a valid size"}, allow_nil: true
	validates :email, uniqueness: true, on: :create
	validates :contact_number, numericality: true, on: :update
	  validates :name, presence: true #, length: { minimum: 3 }
	
end
