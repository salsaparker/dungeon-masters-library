class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :genre
      t.integer :number_of_pages
      t.integer :difficulty_level
      t.string :stat_bonus
      t.timestamps null: false
    end
  end
end
