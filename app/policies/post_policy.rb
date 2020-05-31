class PostPolicy < ApplicationPolicy
  alias_rule :destroy?, to: :update?

  def update?
    user.admin? || (user.id == record.user_id)
  end
end
