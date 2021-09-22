class RemoveLatitudeFromBars < ActiveRecord::Migration[6.1]
  def change
    remove_column :bars, :latitude, :float
  end
end
