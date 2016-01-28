class GoogleMapsToEmployees < ActiveRecord::Migration
  def change
    change_table :employees do |t|
      t.float :latitude
      t.float :longitude
    end
  end
end
