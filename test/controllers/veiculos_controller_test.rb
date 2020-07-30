require 'test_helper'

class VeiculosControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get veiculos_get_url
    assert_response :success
  end

  test "should get getOne" do
    get veiculos_getOne_url
    assert_response :success
  end

  test "should get save" do
    get veiculos_save_url
    assert_response :success
  end

  test "should get update" do
    get veiculos_update_url
    assert_response :success
  end

  test "should get delete" do
    get veiculos_delete_url
    assert_response :success
  end

end
