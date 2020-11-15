class Bus_Policy < ApplicationPolicy
    def show?
      user.admin?
    end
end