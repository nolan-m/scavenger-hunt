class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :clues

end
