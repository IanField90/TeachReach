class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.text :title
      t.text :author

      t.timestamps
    end
  end
end
