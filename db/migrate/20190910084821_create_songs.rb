class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :club
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
