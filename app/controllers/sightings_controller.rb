class SightingsController < ApplicationController


    def index
        sightings = Sighting.all

        render json: SightingSerializer.new(sightings).serializable_hash.to_json
    end 
    
    def show
        sighting = Sighting.find(params[:id])

        render json: SightingSerializer.new(sighting).serializable_hash.to_json
    end 

    def create_sighting
        sighting_params = params.permit!()

        new_sighting = {latitude: sighting_params['latitude'], longitude: sighting_params['longitude'], description: sighting_params['description'], user_id: sighting_params['user_id'], missing_flyer_id: sighting_params['missing_flyer_id'], date: sighting_params['date'], time_stamp: sighting_params['time_stamp']}

        sighting = Sighting.create!(new_sighting)
        render json: SightingSerializer.new(sighting).serializable_hash.to_json 
        # byebug
    end






end
