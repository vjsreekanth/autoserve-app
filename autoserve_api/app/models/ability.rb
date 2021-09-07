# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
      alias_action :create, :read, :update, :destroy, to: :crud
      user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
      # end



      can :crud, Vehicle do |vehicle|
        vehicle.user == user
      end

      can :crud, ServiceRequest do |service_request|
        service_request.user == user
      end

      can :crud, ServiceOffer do |service_offer|
        service_offfer.user == user
      end

      can :crud, Appointment do |appointment|
        appointment.customer == user 
      end

      can :update, Appointment do |appointment|
        appointment.mechanic == user 
      end
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
