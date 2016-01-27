class NgoController < ApplicationController
    def index
        if !params[:search].strip.blank?
          puts "its here"
          @search_name = params[:search].strip
          #@ngos = Ngo.where(:title=>@search_name).paginate(page: params[:page], per_page: 5)
          @ngos = Ngo.where({:title=>/#{@search_name}/}).paginate(page: params[:page], per_page: 10)
        else
          @ngos = nil
        end
       # puts "Total records"
       # puts @ngos.length
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @ngo }
            format.js
        end
    end
end
