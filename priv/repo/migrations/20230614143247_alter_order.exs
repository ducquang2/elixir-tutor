defmodule Example.Repo.Migrations.AlterOrder do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      add :created_by, references(:users)
    end

    create index(:orders, [:created_by])
  end
end
