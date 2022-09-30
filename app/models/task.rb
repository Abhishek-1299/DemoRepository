class Task < ApplicationRecord
	#before_validation :set_title
	#after_validation :set_title
	#validates :title ,presence: true, length: { maximum: 50 }

	#private
		#def set_title
			#self.title = "Pay electricity bill"
		#end

	#before_save :change_title
	#after_save :change_title

	#def change_title

    	#self.title = "Pay electricity & TV bill"

    #end

=begin
     before_validation :set_title
	 before_validation :print_set_title
	  private
	    def set_title
	      self.title = 'Pay electricity bill'
	    end

	    def print_set_title
	      puts self.title
      end
=end

=begin
      before_validation :set_title, if: :title_not_present
		def title_not_present
		  self.title.blank?
		end

		def set_title
		  self.title = 'Pay electricity bill'

		end
=end

=begin
		before_create :greeting_message
		def greeting_message
			puts"Hi! I will run before create an object!"
		end
=end
		#after_create :display_task_age
		after_update :display_task_age

		def display_task_age
			if self.date_of_birth.present?
				age=Date.today.year - self.date_of_birth.year
				puts "=======age of the task is #{age} ======"
			else
				puts "======Age cann't be calculated without date_of_birth======"
			end

		end
end
 	