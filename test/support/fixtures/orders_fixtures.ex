defmodule Example.OrdersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Example.Orders` context.
  """

  @doc """
  Generate a order.
  """
  def order_fixture(attrs \\ %{}) do
    {:ok, order} =
      attrs
      |> Enum.into(%{
        order_date: ~N[2023-06-13 07:01:00]
      })
      |> Example.Orders.create_order()

    order
  end
end
