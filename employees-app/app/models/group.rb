class Group < ActiveRecord::Base
  has_many :employees_groupeds
  has_many :employees, through: :employees_groupeds
end
