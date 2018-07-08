defmodule Ectoassoc.Identity do

  import Ecto.Query, warn: false
  alias Ectoassoc.Repo

  alias Ectoassoc.Identity.User
  alias Ectoassoc.Identity.Adress

  def list_users do
    Repo.all(User)
    |> Ectoassoc.Repo.preload(:adress)

  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> Ectoassoc.Repo.preload(:adress)
    |> User.changeset(attrs)
    |> Repo.insert()

  end

  def get_user!(id), do: Repo.get!(User,id) |> Ectoassoc.Repo.preload(:adress)

  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  def change_adress(%Adress{} = adress) do
    Adress.changeset(adress, %{})
  end

  def list_adresses do
    Repo.all(Adress)
  end

  def create_adress(attrs \\ %{}) do
    %Adress{}
    |> Ectoassoc.Repo.preload(:user)
    |> Adress.changeset(attrs)
    |> Repo.insert()
  end

  def get_adress!(id), do: Repo.get!(Adress, id)


end
