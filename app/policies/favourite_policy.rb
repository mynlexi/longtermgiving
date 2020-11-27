class FavouritePolicy < ApplicationPolicy
  
  def create?
    true
  end

  def destroy?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
