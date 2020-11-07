class CreatePies < ActiveRecord::Migration[5.2]
  def change
    create_table :pies do |t|
      t.string :kind
      t.string :percent

      t.timestamps
    end
  end
end
