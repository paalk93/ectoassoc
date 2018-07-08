defmodule Ectoassoc.Identity.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :fname, :string
    field :lname, :string
    field :phone, :string
    field :email, :string
    has_many :adress, Ectoassoc.Identity.Adress
    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:fname, :lname, :phone, :email])
    |> cast_assoc(:adress)
    |> validate_required([:fname, :lname, :phone, :email])
  end
end
