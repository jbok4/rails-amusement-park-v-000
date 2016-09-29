class UserPolicy < ApplicationPolicy

  def show?
    user.admin? || user.id == record.id
  end


  def destroy?
    user.admin? || user.id == record.id
  end

  def update?
    user.admin? || user.id == record.id
  end

end