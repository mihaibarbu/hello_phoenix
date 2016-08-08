defmodule HelloPhoenix.Post do
  use HelloPhoenix.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string
    field :draft, :boolean

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :draft])
    |> validate_required([:title, :body])
  end
end
