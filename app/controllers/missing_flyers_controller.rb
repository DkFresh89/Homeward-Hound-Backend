class MissingFlyersController < ApplicationController

    def index 
        flyers = MissingFlyer.all 
        render json: MissingFlyerSerializer.new(flyers).serializable_hash.to_json
    end

    def show 
        flyer = MissingFlyer.find(params[:id])
        render json: MissingFlyerSerializer.new(flyer).serializable_hash.to_json
    end

    def update_flyer 
        flyer = MissingFlyer.find(params[:id])

        flyer_params = params.permit!()

        update_flyer = { description: flyer_params['description'], reward: flyer_params['reward'], found: flyer_params['found']}

        flyer.update(update_flyer)
        # byebug
        render json: MissingFlyerSerializer.new(flyer).serializable_hash.to_json 
        

    end 

    def create_flyer
        flyer_params = params.permit(:latitude, :longitude, :description, :reward, :found, :image, :dog_id)
        new_flyer = { latitude: flyer_params['latitude'], longitude: flyer_params['longitude'], description: flyer_params['description'], reward: flyer_params['reward'], found: flyer_params['found'], dog_id: flyer_params['dog_id']}
        
        flyer = MissingFlyer.create(new_flyer)
        render json: MissingFlyerSerializer.new(flyer).serializable_hash.to_json 
        puts 'added flyer'
        # byebug
    end

end
