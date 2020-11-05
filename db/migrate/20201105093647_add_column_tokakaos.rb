class AddColumnTokakaos < ActiveRecord::Migration[5.2]
  def change
    add_column :kakaos, :desc, :text
  end
end
