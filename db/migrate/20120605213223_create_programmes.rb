class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.text :title
      t.text :author

      t.timestamps
    end
  end
end
