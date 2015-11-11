class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :origin_word
      t.string :translated_word
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
