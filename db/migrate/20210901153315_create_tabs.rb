class CreateTabs < ActiveRecord::Migration[6.1]
  def change
    create_table :tabs do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :bar, null: false, foreign_key: true
      t.boolean :is_open

      t.timestamps
    end
  end
end
