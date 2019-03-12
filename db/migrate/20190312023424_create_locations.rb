class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :item, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
