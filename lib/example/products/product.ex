defmodule Example.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :price, :float

    many_to_many :orders, Example.Orders.Order, join_through: "orders_products"

    # has_many :product_orders, Example.Orders_Products.Order_Product
    # has_many :orders, through: [:product_orders, :order]

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :price])
    |> validate_required([:name, :price])
  end
end
