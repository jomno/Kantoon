class AddColumnToComics < ActiveRecord::Migration[5.2]
  def change
    add_column :comics, :desc, :text
  end
end
