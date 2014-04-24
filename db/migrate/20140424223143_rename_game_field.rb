class RenameGameField < ActiveRecord::Migration
  def change
    rename_column :guesses, :game_id, :played_game_id
  end
end
