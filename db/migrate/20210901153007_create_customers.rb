class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :credit_card

      t.timestamps
    end
  end
end
