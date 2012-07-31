class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      case user.role
        when "superadmin"
          can :manage, :all

        when "admin"
          can :manage, [Article, Review]

        when "editor"
          can :manage, [Article, Review] do |resource|
            resource.created_by.id == user.id
          end
          can :create, [Article, Review]
      end
    end
  end
end
