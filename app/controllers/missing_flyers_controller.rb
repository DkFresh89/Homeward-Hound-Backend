class MissingFlyersController < ApplicationController

    # def index 
    #     @flyer = MissingFlyer.all 
    #     render :json @flyer
    # end

    def create_flyer
        flyer_params = params.permit(:latitude, :longitude, :description, :reward, :found, :dog_id)
        new_flyer = { latitude: flyer_params['latitude'], longitude: flyer_params['longitude'], description: flyer_params['description'], reward: flyer_params['reward'], found: flyer_params['found'], dog_id: flyer_params['dog_id']}

        flyer = MissingFlyer.create(new_flyer)
        render json: flyer 
        puts 'added flyer'
        # byebug
    end

end
