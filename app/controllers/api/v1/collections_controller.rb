class Api::V1::CollectionsController < ApplicationController

    def index 
        collections = Collection.all 
        render json: CollectionSerializer.new(collections)
    end

    def create 
        collection = Collection.new(collection_params)
        if collection.save 
            render json: collection 
        else
            render json: {errors: collection.errors.full_messages}
        end
    end

    private
        def collection_params 
            params.require(:collection).permit(:name)
        end

end
