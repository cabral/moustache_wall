require 'test_helper'

class MoustacheTest < ActionDispatch::IntegrationTest

  test "should have a homepage" do
    r = get '/'
    assert_equal 200, r
  end
end
