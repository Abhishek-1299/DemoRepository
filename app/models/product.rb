class Product < ApplicationRecord
	validates :name, presence:true
	validates :title, length: { is: 5 }, allow_blank: true

	# validates :size, inclusion: { in: %w(small medium large), allow_nil: true

end

