require 'test_helper'
class MoustacheTest < ActiveSupport::TestCase
  def setup
    @moustache = Moustache.create :name => 'Belgian'
  end

  test "should create a belgian moustache" do
    assert_equal 'Belgian', @moustache.name
  end
end