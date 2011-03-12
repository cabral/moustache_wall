require 'test_helper'

class MoustachesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "should return list of moustaches" do
    get :index
    assert assigns :moustaches
  end
end
