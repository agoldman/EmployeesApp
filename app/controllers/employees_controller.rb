class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:sucess] = "New Employee Created"
      redirect_to employee_url(@employee)
    else
      flash[:error] = "Invalid input"
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      flash[:success] = "Employee Updated"
      redirect_to employee_url(@employee)
    else
      flash[:error] = "Invalid Input"
      render :edit
    end
  end



end
