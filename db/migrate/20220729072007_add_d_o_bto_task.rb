class AddDOBtoTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :date_of_birth, :date  
  end
end
