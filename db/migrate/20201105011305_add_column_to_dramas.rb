class AddColumnToDramas < ActiveRecord::Migration[5.2]
  def change
    add_reference :dramas, :category, foreign_key: true
  end
end
