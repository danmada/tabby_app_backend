class AddAdminuserColumnToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :adminUser, :string
  end
end
