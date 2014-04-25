class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :clues
  has_many :played_games


  validates :location_id, :name, :presence => true
end
