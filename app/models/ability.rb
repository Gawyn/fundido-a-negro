class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      case user.role
        when "superadmin"
          can :manage, :all

        when "admin"
          can :manage, [Document]

        when "editor"
          can :manage, [Document] do |resource|
            resource.created_by.id == user.id
          end
          can :create, [Document]
      end
    end
  end
end
