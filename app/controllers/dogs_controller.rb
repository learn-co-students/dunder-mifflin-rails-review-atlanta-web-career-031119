class DogsController < ApplicationController
    def index
        @all_dogs=Dog.all
    end

    def show
        @dog=Dog.find(params[:id])
        @minions=Employee.select{|e| e.dog==@dog.name}
    end

    def new
    end

    def create
    end

end
