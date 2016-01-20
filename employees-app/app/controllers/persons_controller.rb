class PersonsController < ApplicationController
  def cat
    @employee = Employee.first
  end

  def index
    @employees = Employee.all
  end

  def new

  end

  def create
    @employee = Employee.create({first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                job_title: params[:job_title],
                                salary: params[:salary],
                                phone_number: params[:phone_number],
                                gender: params[:gender]})
    redirect_to "/"
  end

  def show
    @employees = Employee.find(params[:id])
  end
end
