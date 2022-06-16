class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :expenses, foreign_key: :created_by_id

  scope :without_me, ->(id) {where.not(id: id)}

  def friends
    User.where.not(id: self.id)
  end
end
