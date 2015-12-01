class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :topics, :subjects
  end
end
