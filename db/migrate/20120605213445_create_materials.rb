class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.text :title
      t.text :author
      t.boolean :published
      t.integer :type

      t.timestamps
    end
  end
end
