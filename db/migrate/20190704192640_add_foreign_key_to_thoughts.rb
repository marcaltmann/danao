class AddForeignKeyToThoughts < ActiveRecord::Migration[5.2]
  def change
    change_table :thoughts do |t|
      t.bigint :reference_id
    end

    add_foreign_key :thoughts, :references
  end
end
