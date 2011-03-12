require 'test_helper'

class MoustachesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "should return list of moustaches" do
    #Moustache.create :name => 'Bigorna'
    get :index
    assert assigns :moustaches
    assert_select "table#moustaches tr",2
  end
  test "should get new" do
    get :new
    assert assigns(:moustache)
    assert assigns(:moustache).new_record?
    assert_select "form#new_moustache" do
      assert_select "input#moustache_name[name='moustache[name]']"
      assert_select "input[type='submit']"
    end
  end
  
  test "should created new moustache" do
    assert_difference "Moustache.count", 1 do
      post :create, :moustache => {:name => 'diogo moustache'}
      assert_equal 'diogo moustache', assigns(:moustache).name
    end
    assert_redirected_to moustaches_path
  end
    
end
