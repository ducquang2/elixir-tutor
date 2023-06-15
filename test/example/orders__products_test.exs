defmodule Example.Orders_ProductsTest do
  use Example.DataCase

  alias Example.Orders_Products

  describe "orders_products" do
    alias Example.Orders_Products.Order_Product

    import Example.Orders_ProductsFixtures

    @invalid_attrs %{}

    test "list_orders_products/0 returns all orders_products" do
      order__product = order__product_fixture()
      assert Orders_Products.list_orders_products() == [order__product]
    end

    test "get_order__product!/1 returns the order__product with given id" do
      order__product = order__product_fixture()
      assert Orders_Products.get_order__product!(order__product.id) == order__product
    end

    test "create_order__product/1 with valid data creates a order__product" do
      valid_attrs = %{}

      assert {:ok, %Order_Product{} = order__product} = Orders_Products.create_order__product(valid_attrs)
    end

    test "create_order__product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Orders_Products.create_order__product(@invalid_attrs)
    end

    test "update_order__product/2 with valid data updates the order__product" do
      order__product = order__product_fixture()
      update_attrs = %{}

      assert {:ok, %Order_Product{} = order__product} = Orders_Products.update_order__product(order__product, update_attrs)
    end

    test "update_order__product/2 with invalid data returns error changeset" do
      order__product = order__product_fixture()
      assert {:error, %Ecto.Changeset{}} = Orders_Products.update_order__product(order__product, @invalid_attrs)
      assert order__product == Orders_Products.get_order__product!(order__product.id)
    end

    test "delete_order__product/1 deletes the order__product" do
      order__product = order__product_fixture()
      assert {:ok, %Order_Product{}} = Orders_Products.delete_order__product(order__product)
      assert_raise Ecto.NoResultsError, fn -> Orders_Products.get_order__product!(order__product.id) end
    end

    test "change_order__product/1 returns a order__product changeset" do
      order__product = order__product_fixture()
      assert %Ecto.Changeset{} = Orders_Products.change_order__product(order__product)
    end
  end
end
