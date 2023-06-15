defmodule Example.Orders_Products do
  @moduledoc """
  The Orders_Products context.
  """

  import Ecto.Query, warn: false
  alias Example.Repo

  alias Example.Orders_Products.Order_Product

  @doc """
  Returns the list of orders_products.

  ## Examples

      iex> list_orders_products()
      [%Order_Product{}, ...]

  """
  def list_orders_products do
    Repo.all(Order_Product) |> Repo.preload([:order, :product])
  end

  @doc """
  Gets a single order__product.

  Raises `Ecto.NoResultsError` if the Order  product does not exist.

  ## Examples

      iex> get_order__product!(123)
      %Order_Product{}

      iex> get_order__product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_order__product!(id), do: Repo.get!(Order_Product, id)

  @doc """
  Creates a order__product.

  ## Examples

      iex> create_order__product(%{field: value})
      {:ok, %Order_Product{}}

      iex> create_order__product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_order__product(attrs \\ %{}) do
    %Order_Product{}
    |> Order_Product.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a order__product.

  ## Examples

      iex> update_order__product(order__product, %{field: new_value})
      {:ok, %Order_Product{}}

      iex> update_order__product(order__product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_order__product(%Order_Product{} = order__product, attrs) do
    order__product
    |> Order_Product.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a order__product.

  ## Examples

      iex> delete_order__product(order__product)
      {:ok, %Order_Product{}}

      iex> delete_order__product(order__product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_order__product(%Order_Product{} = order__product) do
    Repo.delete(order__product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking order__product changes.

  ## Examples

      iex> change_order__product(order__product)
      %Ecto.Changeset{data: %Order_Product{}}

  """
  def change_order__product(%Order_Product{} = order__product, attrs \\ %{}) do
    Order_Product.changeset(order__product, attrs)
  end
end
