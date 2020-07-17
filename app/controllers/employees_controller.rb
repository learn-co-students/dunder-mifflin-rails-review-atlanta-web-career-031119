class EmployeesController < ApplicationController
    def index
        @all_emps=Employee.all
    end

    def new
        @employee = Employee.new
    end
   
    def create
        @employee = Employee.new(employee_params)
        if  @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            render :new
        end  
    end

    def show
        @emp=Employee.find(params[:id])
        # @choice_dog=Dogs.select{|d| @emp.dog==d.name}
    end

    private
    
    def employee_params
        params.require(:employee).permit!
    end
end
