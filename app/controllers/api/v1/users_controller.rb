class Api::V1::UsersController < ApplicationController

    def create 
        user = User.new
    end

    def show 
        @user = User.find_by_id(params[:id])
        
    end

end