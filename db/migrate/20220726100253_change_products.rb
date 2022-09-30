class ChangeProducts < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.change :part_number, :text
      # change_column :products, :part_number, :text

    end
  end
end
