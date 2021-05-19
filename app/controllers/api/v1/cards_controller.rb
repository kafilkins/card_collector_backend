class Api::V1::CardsController < ApplicationController

    def create 
        byebug
        collection = Collection.find(params[:collection_id])
       # card = collection.cards.build({
       #     player: ,
       #     description:
        #}) 
        #if card.save 
        #    render json: card 
        #else
        #    render json: {message: card.errors.messages}
        #end
    end

end