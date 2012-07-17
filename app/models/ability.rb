class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Document

    if user
      case user.role
        when "admin"
          can :manage, :all

        when "editor"
          can :create, [Article, Review]
          can [:update, :read], [Article, Review] do |resource|
            resource.author.id = user.id
          end
      end
    end
  end
end
