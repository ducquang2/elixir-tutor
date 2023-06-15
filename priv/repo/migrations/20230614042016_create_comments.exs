defmodule Example.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :string
      add :status, :boolean, default: false, null: false

      timestamps()
    end
  end
end
