defmodule Forum.Repo.Migrations.RenameTableNameFromUserToUsers do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      remove :user_id
    end

    alter table(:posts) do
      add :user_id, references(:users, on_delete: :nothing)
    end
  end
end
