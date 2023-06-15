defmodule Example.Repo.Migrations.ProductsOrders do
  use Ecto.Migration

  def change do
    create table(:products_orders) do
      add :product_id, references(:products)
      add :order_id, references(:orders)
    end
  end
end
