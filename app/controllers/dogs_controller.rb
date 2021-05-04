class DogsController < ApplicationController

    def index 
        @dogs = Dog.all 
        render json: @dogs
    end 

    def show
        @dog = Dog.find(params[:id])
        render json: @dog 
    end 

    def add_dog
        dog_params = params.permit(:name, :breed, :size, :age, :temperament, :image, :user_id)
        new_dog = { name: dog_params['name'], breed: dog_params['breed'], size: dog_params['size'], age: dog_params['age'], temperament: dog_params['temperament'], image: dog_params['image'], user_id: dog_params['user_id'] }

        dog = Dog.create!(new_dog)
        render json: DogSerializer.new(dog) 
        puts 'added dog'
        # byebug

    end 

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy!
        render json: @dog
    end

end
