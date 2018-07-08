defmodule EctoassocWeb.ProductsController do
  use EctoassocWeb, :controller

  alias Ectoassoc.Repo
  alias Ectoassoc.Product
  alias Ectoassoc.Product.Products

  def index(conn, params) do
    products = Product.list_products(params)
    render(conn, "index.html", products: products)
  end

  def show(conn, %{"id" => id}) do
  product = Product.get_product!(id)
  render(conn, "show.html", product: product)
end

end
