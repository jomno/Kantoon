class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :image
      t.string :title
      t.string :genre
      t.string :author

      t.timestamps
    end
  end
end
