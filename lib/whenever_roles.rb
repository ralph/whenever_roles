require 'whenever_roles/version'
require 'whenever'

module WheneverRoles
  module_function
  def R(environments=[], *roles)
    if environments == :all
      environments = known_environments
    end
    environments.product(roles).map {|comb| comb.map(&:to_s).join('_') }.map(&:to_sym)
  end

private
  def known_environments
    @known_environments || [:production, :staging]
  end
end

Whenever::JobList.send(:include, WheneverRoles)
