class CreateDramas < ActiveRecord::Migration[5.2]
  def change
    create_table :dramas do |t|
      t.string :title
      t.string :image
      t.string :desc
      t.string :character

      t.timestamps
    end
  end
end
