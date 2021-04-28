class MissingFlyersController < ApplicationController

    def index 
        @flyer = MissingFlyer.all 
        render :json @flyer
    end
end
