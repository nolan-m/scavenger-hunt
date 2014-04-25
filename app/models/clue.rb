class Clue < ActiveRecord::Base
  belongs_to :game

  validates :content, :presence => true
end
