defmodule Ectoassoc.Product do
  import Ecto.Query, warn: false
  alias Ectoassoc.Repo

  alias Ectoassoc.Product.Products

  def list_products(params) do
    search_term = get_in(params, ["query"])
    Products
    |> Products.search(search_term)
    |> Repo.all()
  end

  def get_product!(id), do: Repo.get!(Products,id)

  def create_product(attrs \\ %{}) do
    %Products{}
    |> Products.changeset(attrs)
    |> Repo.insert
  end

  def change_product(%Products{} = products) do
      Products.changeset(products, %{})
  end

  def delete_product(%Products{} = product) do
      Repo.delete(product)
  end

  def update_product(%Products{} = product, attrs) do
    product
    |> Products.changeset(attrs)
    |> Repo.update()
  end


end
