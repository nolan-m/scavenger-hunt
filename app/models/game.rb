class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :clues
  has_many :played_games


  validates :location_id, :name, :presence => true

  def best_scores
    scores = []
    self.played_games.each do |game|
      scores << game.score
    end
    scores.compact.sort
  end
end
