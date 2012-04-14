require 'test_helper'

class WigsControllerTest < ActionController::TestCase
  setup do
    @wig = wigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wig" do
    assert_difference('Wig.count') do
      post :create, wig: @wig.attributes
    end

    assert_redirected_to wig_path(assigns(:wig))
  end

  test "should show wig" do
    get :show, id: @wig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wig
    assert_response :success
  end

  test "should update wig" do
    put :update, id: @wig, wig: @wig.attributes
    assert_redirected_to wig_path(assigns(:wig))
  end

  test "should destroy wig" do
    assert_difference('Wig.count', -1) do
      delete :destroy, id: @wig
    end

    assert_redirected_to wigs_path
  end
end
