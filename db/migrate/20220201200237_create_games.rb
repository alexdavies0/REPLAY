class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.references :user_id, null: false, foreign_key: true
      t.string :condition

      t.timestamps
    end
  end
end
