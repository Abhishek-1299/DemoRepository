class User < ApplicationRecord

  before_validation :normalize_name, on: :create

  # :on takes an array as well
  #after_validation :set_location, on: [ :create, :update ]
  before_create :  
  private
    def normalize_name
      self.name = name.downcase
    end
end
