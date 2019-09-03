require 'test_helper'

class CategoryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_type = category_types(:one)
  end

  test "should get index" do
    get category_types_url, as: :json
    assert_response :success
  end

  test "should create category_type" do
    assert_difference('CategoryType.count') do
      post category_types_url, params: { category_type: { category_id: @category_type.category_id, name: @category_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show category_type" do
    get category_type_url(@category_type), as: :json
    assert_response :success
  end

  test "should update category_type" do
    patch category_type_url(@category_type), params: { category_type: { category_id: @category_type.category_id, name: @category_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy category_type" do
    assert_difference('CategoryType.count', -1) do
      delete category_type_url(@category_type), as: :json
    end

    assert_response 204
  end
end
