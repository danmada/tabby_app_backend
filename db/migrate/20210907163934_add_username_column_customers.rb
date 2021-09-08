class AddUsernameColumnCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :username, :string
  end
end
