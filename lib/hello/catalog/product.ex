defmodule Hello.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :title, :string
    field :descripton, :string
    field :price, :decimal
    field :views, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:title, :descripton, :price, :views])
    |> validate_required([:title, :descripton, :price, :views])
  end
end
