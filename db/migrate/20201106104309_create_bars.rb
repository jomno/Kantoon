class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :year
      t.integer :epi

      t.timestamps
    end
  end
end
