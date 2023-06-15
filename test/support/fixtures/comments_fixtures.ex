defmodule Example.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Example.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        content: "some content",
        status: true
      })
      |> Example.Comments.create_comment()

    comment
  end
end
