class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :tab, null: false, foreign_key: true
      t.belongs_to :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
