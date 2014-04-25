class Played_game < ActiveRecord::Base
  belongs_to :game
  has_many :guesses


end
