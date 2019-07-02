class AddPositionToThoughts < ActiveRecord::Migration[5.2]
  def change
    change_table :thoughts do |t|
      t.string :position
    end
  end
end
