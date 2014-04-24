class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :name
      t.integer :location_id
      t.timestamps
    end
    create_table :played_games do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :score
      t.timestamps
    end
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
    create_table :guesses do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :location_id
      t.timestamps
    end
    create_table :clues do |t|
      t.integer :game_id
      t.string :content
      t.timestamps
    end
  end
end
