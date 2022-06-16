class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.float :amount, null: false, default: 0
      t.datetime :event_date, null: false, default: DateTime.now
      t.references :paid_by, null: false, foreign_key: { to_table: :users }
      t.references :created_by, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
