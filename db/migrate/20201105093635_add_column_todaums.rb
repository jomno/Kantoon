class AddColumnTodaums < ActiveRecord::Migration[5.2]
  def change
    add_column :daums, :desc, :text
  end
end
