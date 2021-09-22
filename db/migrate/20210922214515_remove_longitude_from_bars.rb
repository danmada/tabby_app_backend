class RemoveLongitudeFromBars < ActiveRecord::Migration[6.1]
  def change
    remove_column :bars, :longitude, :float
  end
end
