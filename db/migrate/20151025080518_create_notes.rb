class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :artist
      t.string :name
      t.integer :year
      t.string :genre
      t.string :description
      t.boolean :break
      t.string :format
      t.string :album

      t.timestamps
    end
  end
end
