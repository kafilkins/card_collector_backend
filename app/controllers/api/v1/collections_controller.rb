class Api::V1::CollectionsController < ApplicationController

    def index 
        collections = Collection.all 
        render json: CollectionSerializer.new(collections)
    end

    def create 
        collection = Collection.new(collection_params)
        if collection.save 
            render json: CollectionSerializer.new(collection)
        else
            render json: {errors: collection.errors.full_messages}
        end
    end

    def destroy 
        collection = Collection.find(params[:id])
        collection.destroy
    end

    private

        def collection_params 
            params.require(:collection).permit(:title)
        end

end
