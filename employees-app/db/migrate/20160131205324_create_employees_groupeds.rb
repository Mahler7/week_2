class CreateEmployeesGroupeds < ActiveRecord::Migration
  def change
    create_table :employees_groupeds do |t|
      t.integer :employee_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
