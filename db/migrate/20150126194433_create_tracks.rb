class CreateTracks < ActiveRecord::Migration

  def up
    create_table :tracks do |t|
      t.string :title
      t.string :author
      t.string :url
      t.timestamps
    end
  end

  def down
    drop_table :tracks
  end
end