class CreateSplitExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :split_expenses do |t|
      t.belongs_to :user
      t.belongs_to :expense
      t.float :shared_amount
      t.boolean :is_paid, default: false
      t.timestamps
    end
  end
end
