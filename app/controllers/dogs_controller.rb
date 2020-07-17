class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new
  end

  def show
    @dog = Dog.find(params[:id])
  
  end

  def update
  end
end
