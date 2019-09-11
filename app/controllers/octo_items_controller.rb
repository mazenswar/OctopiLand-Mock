class OctoItemsController < ApplicationController
    def new
        @octo_item = OctoItem.new
        @octopi = Octopus.all
        @items = Item.all
    end

    def create
        @octo_item = OctoItem.create(octo_item_params)
        redirect_to @octo_item.octopus
    end

    private

    def octo_item_params
        params.require(:octo_item).permit(:octopus_id, :item_id)
    end
end
