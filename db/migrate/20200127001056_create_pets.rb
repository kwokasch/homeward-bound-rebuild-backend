class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :lost_status
      t.string :name
      t.string :species
      t.string :gender
      t.string :size
      t.string :color
      t.string :age
      t.string :breed
      t.string :temperament
      t.text :comments
      t.date :date_lost_or_found
      t.string :chip_id
      t.text :additional_lost_found_info
      t.string :latitude
      t.string :longitude
      t.string :picture_url

      t.timestamps
    end
  end
end
