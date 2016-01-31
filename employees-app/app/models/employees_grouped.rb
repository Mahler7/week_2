class EmployeesGrouped < ActiveRecord::Base
  belongs_to :group
  belongs_to :employee
end
