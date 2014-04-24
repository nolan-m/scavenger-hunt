class Guess < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :location

end
