defmodule Example.Orders_ProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Example.Orders_Products` context.
  """

  @doc """
  Generate a order__product.
  """
  def order__product_fixture(attrs \\ %{}) do
    {:ok, order__product} =
      attrs
      |> Enum.into(%{

      })
      |> Example.Orders_Products.create_order__product()

    order__product
  end
end
