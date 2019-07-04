class RenameReferencesTable < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :thoughts, column: :reference_id
    rename_table :references, :sources

    change_table :thoughts do |t|
      t.rename :reference_id, :source_id
    end

    add_foreign_key :thoughts, :sources
  end

  def down
    remove_foreign_key :thoughts, :sources

    change_table :thoughts do |t|
      t.rename :source_id, :reference_id
    end

    rename_table :sources, :references
    add_foreign_key :thoughts, :references
  end
end
