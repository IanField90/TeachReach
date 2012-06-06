class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :title
      t.text :author

      t.timestamps
    end
  end
end
