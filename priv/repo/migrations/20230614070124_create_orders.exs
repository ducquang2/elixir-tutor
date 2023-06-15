defmodule Example.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :order_date, :naive_datetime

      timestamps()
    end
  end
end
