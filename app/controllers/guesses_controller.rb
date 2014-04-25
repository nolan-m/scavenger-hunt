class GuessesController < ApplicationController
  def create
     respond_to do |f|
      f.js do
        separated_coords = Location.separate_lat_lon(params[:game][:location])
        @location = Location.create(latitude: separated_coords[0], longitude: separated_coords[1])
        @guess = Guess.create(:game_id => params[:game_id], :user_id => current_user.id, :location_id => @location.id )
        redirect_to root_path
      end
     end
  end
end
