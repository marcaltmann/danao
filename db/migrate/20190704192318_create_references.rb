class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :author
      t.string :name
      t.string :optional
      t.string :url

      t.timestamps
    end
  end
end
