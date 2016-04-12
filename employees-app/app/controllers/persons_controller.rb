class PersonsController < ApplicationController
  def cat
    @employee = Employee.first
  end

  def index
    @employees = Employee.all

    if params[:group]
      @group = Group.find_by(name: params[:group])
      @employees = @group.employees
    end

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
                                gender: params[:gender],
                                middle_name: params[:middle_name],
                                bio: params[:bio]})
    flash[:success] = "New Employee Created"

    redirect_to "/"
  end

  def show
    @employee = Employee.find(params[:id])
    @groups = @employee.groups
  end

  def edit
    @employee = Employee.find(params[:id])

    flash[:success] = "Employee Updated"
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update({first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                job_title: params[:job_title],
                                salary: params[:salary],
                                phone_number: params[:phone_number],
                                gender: params[:gender],
                                middle_name: params[:middle_name],
                                bio: params[:bio]})
    
    redirect_to "/employees/#{@employee.id}"
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    flash[:warning] = "Employee Destroyed"

    redirect_to "/employees"
  end
end
