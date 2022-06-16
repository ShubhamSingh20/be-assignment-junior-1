class StaticController < ApplicationController
  def dashboard
    @current_user = current_user
    @expense = Expense.new(created_by_id: current_user.id)
  end

  def person; end
end
