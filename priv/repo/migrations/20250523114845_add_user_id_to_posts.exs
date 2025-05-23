defmodule Forum.Repo.Migrations.AddUserIdToPosts do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :user_id, references(:user, on_delete: :nothing)
    end
  end
end
