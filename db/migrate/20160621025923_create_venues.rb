class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :sk_id
      t.string :spotify_playlist_id
      t.string :name

      t.timestamps null: false
    end
  end
end
