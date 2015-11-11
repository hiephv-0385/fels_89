class CreateWordAnswers < ActiveRecord::Migration
  def change
    create_table :word_answers do |t|
      t.integer :word_id
      t.string :answer
      t.boolean :correct
      t.integer :test_method

      t.timestamps null: false
    end
  end
end
