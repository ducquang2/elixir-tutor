defmodule OrdersController do
  alias Example.Products
  alias Example.Orders

  def get_list_orders() do
    Orders.list_orders()
  end

  def create_order(%{order: order, product_ids: product_ids}) do
    products = Products.list_products_by_id(product_ids)

    with {:ok, result} <- Orders.create_order(order) do
      Orders.upsert_product_orders(products, result)
    else
      {:error, changeset} -> changeset
    end
  end
end
