class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :question
      t.text :feedback
      t.integer :question_number
      t.integer :type

      t.timestamps
    end
  end
end
