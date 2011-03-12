require 'test_helper'
class MoustacheTest < ActiveSupport::TestCase
  def setup
    @moustache = Moustache.where(:name => 'Belgian').first
  end

  test "should create a belgian moustache" do
    assert_equal 'Belgian', @moustache.name
    assert_equal 'moustaches/belgian.jpg', @moustache.img_path
  end
  
  test "should fail without a name" do
    @moustache.name = nil
    @moustache.valid?
    assert @moustache.errors[:name].present?
  end
  
  
end
