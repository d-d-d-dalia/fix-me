class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    respond_to do |format|
      format.html
      format.json {render json: @dogs}
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
    #   redirect_to dog_path(@dog)
    # else
    #   redirect_to new_dog_path
      respond_to do |format|
        format.html
        format.json {render json: @dog}
      end
    end
  end

  def show
    @dog = Dog.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @dog}
    end
  end

  def adopt
    @dog = Dog.find(params[:id])
  end

  def abandon
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    if @dog.save
      redirect_to dog_path(@dog)
    else
      redirect_to "/dogs/#{@dog.id}/adopt"
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :shelter_id, :owner_id, owner_attributes: [:name])
  end

end