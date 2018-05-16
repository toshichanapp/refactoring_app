class AddIndexToFavorite < ActiveRecord::Migration[5.1]
  def change
    add_index :favorites,  :user_id
    add_index :favorites,  :picture_id
  end
end
