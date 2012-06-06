class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :title
      t.text :author
      t.boolean :published

      t.timestamps
    end
  end
end
