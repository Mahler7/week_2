class AddMiddleNameToEmployee < ActiveRecord::Migration
  def change
    change_table :employees do |t|
      t.string :middle_name
      t.text :bio
    end
  end
end
