class OctopiController < ApplicationController

    def index
        @octopi = Octopus.all
    end

    def show
        @octopus = Octopus.find(params[:id])
    end
    
end
