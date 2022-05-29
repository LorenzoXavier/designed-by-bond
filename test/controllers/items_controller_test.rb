require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { availability: @item.availability, brand: @item.brand, description: @item.description, price: @item.price, product_code: @item.product_code, quantity_available: @item.quantity_available, review_count: @item.review_count, review_rating: @item.review_rating, title: @item.title } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { availability: @item.availability, brand: @item.brand, description: @item.description, price: @item.price, product_code: @item.product_code, quantity_available: @item.quantity_available, review_count: @item.review_count, review_rating: @item.review_rating, title: @item.title } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
