class CommentPolicy < ApplicationPolicy
  def destroy?
    user.admin? || (user.id == record.user_id) ||
      allowed_to?(:update?, record.post)
  end
end
