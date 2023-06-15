defmodule Example.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :order_date, :naive_datetime
    field :created_by, :id

    # belongs_to :user, Example.Users.User, foreign_key: :created_by

    many_to_many :products, Example.Products.Product, join_through: "orders_products"

    # has_many :product_orders, Example.Orders_Products.Order_Product
    # has_many :products, through: [:product_orders, :product]
    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:order_date, :created_by])
    |> validate_required([:order_date, :created_by])
  end
end
