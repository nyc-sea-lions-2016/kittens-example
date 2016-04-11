class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :breed
      t.string :description
      t.date :date_of_birth
      t.string :temperament

      t.timestamps null: false
    end
  end
end
