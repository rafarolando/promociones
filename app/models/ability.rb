class Ability
  include CanCan::Ability

  def initialize(user)

    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.tipo == "Admin"
      can :manage, :all
    elsif user.tipo =="empresa"
      can :read, Cupon
      can :create, Cupon
      can :update, Cupon

      can :read, Promocion
      can :create, Promocion
      can :update, Promocion

      can :read, Empresa
      can :buscar, Empresa
      can :update, Empresa

    elsif user.tipo == "cliente"
      can :read, Departamento
      can :read, Ciudad
      can :create, Ciudad
      can :read, Cupon
      can :read, Promocion

      can :read, Empresa

      can :buscar, Empresa
      can :buscapromo, Empresa
      can :buscacupo, Empresa
      can :buscamenu, Empresa

      can :read, Persona
      can :create, Persona
      can :update, Persona

    else


      can :read, Empresa
      can :create, Empresa
      can :update, Empresa
      can :newempresa, Empresa
      can :createempresa, Empresa
      can :buscapromo, Empresa
      can :buscacupo, Empresa
      can :buscamenu, Empresa
      can :acuerdo, Empresa
      can :presentacion, Empresa
      can :buscar, Empresa
      can :viewindex, Departamento

      can :newpersona, Persona
      can :createpersona, Persona
      can :create, Persona

      can :create, Categorium
      can :read, :all
    end

    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
