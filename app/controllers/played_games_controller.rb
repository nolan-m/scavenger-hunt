class PlayedGamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @playedgame = PlayedGame.new
  end

  def create
    if user_signed_in?
     @playedgame = PlayedGame.create(game_id: params[:game][:game_id], user_id: current_user.id)
   else
    @playedgame = PlayedGame.create(game_id: params[:game][:game_id])
    end
    redirect_to played_game_path(@playedgame)
  end

  def show
    respond_to do |f|
      f.html do
        @guess = Guess.new
        @playedgame = PlayedGame.find(params[:id])
        @clues = @playedgame.game.clues
      end
      f.js do
        @guesses = @playedgame.guesses
      end
    end
  end
end
