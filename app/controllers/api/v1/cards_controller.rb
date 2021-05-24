class Api::V1::CardsController < ApplicationController

    def create 
        collection = Collection.find(params[:id])
        card = collection.cards.build({
            player: params[:player],
            description: params[:description]
        }) 
        if card.save 
            render json: card 
        else
            render json: {message: card.errors.messages}
        end
    end

end