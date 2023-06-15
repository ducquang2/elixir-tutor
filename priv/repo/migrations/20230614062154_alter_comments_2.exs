defmodule Example.Repo.Migrations.AlterComments2 do
  use Ecto.Migration

  def change do
    alter table(:comments) do
      add :created_by, references(:users)
    end

    create index(:comments, [:created_by])
  end
end
