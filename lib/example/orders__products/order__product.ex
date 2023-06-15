defmodule Example.Orders_Products.Order_Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "orders_products" do
    belongs_to :product, Example.Products.Product
    belongs_to :order, Example.Orders.Order

    # timestamps()
  end

  @doc false
  def changeset(order__product, attrs) do
    order__product
    |> cast(attrs, [:order_id, :product_id])
    |> validate_required([])
  end
end
