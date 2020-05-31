class PostPolicy < ApplicationPolicy
  alias_rule :edit?, :destroy?, to: :update?

  def update?
    user.admin? || (user.id == record.user_id)
  end
end
