require 'minitest/autorun'
require 'whenever_roles'

class WheneverRolesTest < MiniTest::Unit::TestCase
  include WheneverRoles

  def test_whenever_roles
    expected = [:production_scheduler, :staging_scheduler, :development_scheduler]
    actual = R([:production, :staging, :development], :scheduler)
    assert_equal expected, actual
  end

  def test_whenever_all_environments
    expected = [:production_scheduler, :staging_scheduler]
    actual = R(:all, :scheduler)
    assert_equal expected, actual
  end
end
