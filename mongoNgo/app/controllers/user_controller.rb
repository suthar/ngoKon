class UserController < ApplicationController

    def index
        if params[:search]
            @search_name = params[:search]
            @users = User.where(:name=>@search_name).paginate(page: params[:page], per_page: 1)
        else
            @users = nil
        end
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @users }
            format.js
        end
    end

    def search
        if params[:search]
            @search_name = params[:search]
            @users = User.where(:name=>@search_name).paginate(page: params[:page], per_page: 1)
        else
            @users = nil
        end
        puts "Total record found"
        puts @users.length
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @users }
            format.js
        end
    end
end
