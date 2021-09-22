class AddColumnsToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :street, :string
    add_column :bars, :city, :string
    add_column :bars, :state, :string
    add_column :bars, :zipcode, :integer
  end
end
