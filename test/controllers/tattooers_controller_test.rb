require 'test_helper'

class TattooersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tattooer = tattooers(:one)
  end

  test "should get index" do
    get tattooers_url
    assert_response :success
  end

  test "should get new" do
    get new_tattooer_url
    assert_response :success
  end

  test "should create tattooer" do
    assert_difference('Tattooer.count') do
      post tattooers_url, params: { tattooer: { email: @tattooer.email, name: @tattooer.name, style: @tattooer.style } }
    end

    assert_redirected_to tattooer_url(Tattooer.last)
  end

  test "should show tattooer" do
    get tattooer_url(@tattooer)
    assert_response :success
  end

  test "should get edit" do
    get edit_tattooer_url(@tattooer)
    assert_response :success
  end

  test "should update tattooer" do
    patch tattooer_url(@tattooer), params: { tattooer: { email: @tattooer.email, name: @tattooer.name, style: @tattooer.style } }
    assert_redirected_to tattooer_url(@tattooer)
  end

  test "should destroy tattooer" do
    assert_difference('Tattooer.count', -1) do
      delete tattooer_url(@tattooer)
    end

    assert_redirected_to tattooers_url
  end
end
