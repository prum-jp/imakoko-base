class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :body, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
