class AddColumnToPlatforms < ActiveRecord::Migration[5.2]
  def change
    add_column :platforms, :image, :string
  end
end
