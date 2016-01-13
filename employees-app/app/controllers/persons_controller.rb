class PersonsController < ApplicationController
  def cat
    @employee = Employee.first
  end

  def cats
    @employee = Employee.all
  end
end
