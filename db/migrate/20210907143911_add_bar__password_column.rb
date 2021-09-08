class AddBarPasswordColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :password_digest, :string
  end
end
