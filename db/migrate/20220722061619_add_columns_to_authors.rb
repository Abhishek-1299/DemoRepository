class AddColumnsToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :contact_number, :string
  end
end
