require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @categories = Category.create(name: "sports")
  end

  test "should get categories index" do
    get categories_path
    assert_response :success
  end

  test " should get new" do
    get new_category_path
    assert_response :success
  end

  test "should get show" do
    get category_path(@categories)
    assert_response :success
  end
end
