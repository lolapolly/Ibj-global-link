class ItemPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    user_is_admin?
  end

  def edit?
    user_is_admin?
  end

  def update?
    user_is_admin?
    # - record: the item passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    edit?
  end

  private

  def user_is_admin?
    user.admin
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
