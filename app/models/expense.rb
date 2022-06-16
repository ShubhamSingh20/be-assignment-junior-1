class Expense < ApplicationRecord
  self.table_name = :expenses

  belongs_to :paid_by, foreign_key: :created_by_id, class_name: :User
  belongs_to :created_by, foreign_key: :paid_by_id, class_name: :User

  validates :name, presence: true
  validates :event_date, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
