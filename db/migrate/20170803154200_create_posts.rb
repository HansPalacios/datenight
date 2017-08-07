class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :post_name
      t.string :venue_name
      t.string :address
      t.string :phone
      t.text :text
      t.string :image
      t.integer :rating_id
      t.integer :favorite_id
      t.integer :venue_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :venue, foreign_key: true

      t.timestamps
    end
  end
end


      # t.boolean :bar
      # t.boolean :chill_vibe
      # t.boolean :music
      # t.boolean :dancing
      # t.boolean :rooftop
      # t.boolean :restaurant
      # t.boolean :suit_and_tie
      # t.boolean :classy_casual
      # t.boolean :retro_or_hipster
      # t.boolean :quick_bite
      # t.boolean :activity
      # t.boolean :athletic
      # t.boolean :relaxed_fun
      # t.boolean :day_trip
      # t.boolean :free