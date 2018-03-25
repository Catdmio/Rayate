class Ability
  include CanCan::Ability

  def initialize(user)

    if user.respond_to?(:has_role?) && user.has_role?('admin')
        can :manage, :all
    elsif user.respond_to?(:has_role?) && user.has_role?('tattooer')
        can :manage, Event, tattooer_id: user.id
        can :manage, User, id: user.id
    elsif user.respond_to?(:has_role?) && user.has_role?('user')
        can :manage, User, id: user.id
        can :display, Event
    else
        can :diaplay, Event
    end

    # Protect Admin Role
    cannot [:update, :destroy], Role, name: ['admin']
  end
end
