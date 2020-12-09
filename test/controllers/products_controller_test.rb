require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { column_1: @product.column_1, column_2: @product.column_2, column_3: @product.column_3, column_4: @product.column_4, column_5: @product.column_5, description: @product.description, img_path: @product.img_path, inr_price: @product.inr_price, title: @product.title, usd_price: @product.usd_price } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { column_1: @product.column_1, column_2: @product.column_2, column_3: @product.column_3, column_4: @product.column_4, column_5: @product.column_5, description: @product.description, img_path: @product.img_path, inr_price: @product.inr_price, title: @product.title, usd_price: @product.usd_price } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
