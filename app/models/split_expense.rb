class SplitExpense < ApplicationRecord
  self.table_name = :split_expenses

  belongs_to :user, foreign_key: :user_id, class_name: :User
  belongs_to :expense, foreign_key: :expense_id, class_name: :Expense
end
