class AddColumnToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :zone, foreign_key: true
  end
end
