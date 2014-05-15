require 'test_helper'

class BreweriesControllerTest < ActionController::TestCase
  setup do
    @brewery = breweries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breweries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewery" do
    assert_difference('Brewery.count') do
      post :create, brewery: { address: @brewery.address, beer1: @brewery.beer1, beer2: @brewery.beer2, beer3: @brewery.beer3, city: @brewery.city, ga_direction: @brewery.ga_direction, generic_growlers: @brewery.generic_growlers, name: @brewery.name, style: @brewery.style, transit: @brewery.transit, zip: @brewery.zip }
    end

    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should show brewery" do
    get :show, id: @brewery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewery
    assert_response :success
  end

  test "should update brewery" do
    patch :update, id: @brewery, brewery: { address: @brewery.address, beer1: @brewery.beer1, beer2: @brewery.beer2, beer3: @brewery.beer3, city: @brewery.city, ga_direction: @brewery.ga_direction, generic_growlers: @brewery.generic_growlers, name: @brewery.name, style: @brewery.style, transit: @brewery.transit, zip: @brewery.zip }
    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should destroy brewery" do
    assert_difference('Brewery.count', -1) do
      delete :destroy, id: @brewery
    end

    assert_redirected_to breweries_path
  end
end
