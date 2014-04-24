class Guess < ActiveRecord::Base
  belongs_to :played_game
  belongs_to :user
  belongs_to :location

end
