defmodule ProductsController do
  alias Example.Products

  def get_list_products() do
    Products.list_products()
  end
end
