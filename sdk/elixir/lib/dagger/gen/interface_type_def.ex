# This file generated by `dagger_codegen`. Please DO NOT EDIT.
defmodule Dagger.InterfaceTypeDef do
  @moduledoc "A definition of a custom interface defined in a Module."

  alias Dagger.Core.Client
  alias Dagger.Core.QueryBuilder, as: QB

  @derive Dagger.ID

  defstruct [:query_builder, :client]

  @type t() :: %__MODULE__{}

  @doc "The doc string for the interface, if any."
  @spec description(t()) :: {:ok, String.t()} | {:error, term()}
  def description(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("description")

    Client.execute(interface_type_def.client, query_builder)
  end

  @doc "Functions defined on this interface, if any."
  @spec functions(t()) :: {:ok, [Dagger.Function.t()]} | {:error, term()}
  def functions(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("functions") |> QB.select("id")

    with {:ok, items} <- Client.execute(interface_type_def.client, query_builder) do
      {:ok,
       for %{"id" => id} <- items do
         %Dagger.Function{
           query_builder:
             QB.query()
             |> QB.select("loadFunctionFromID")
             |> QB.put_arg("id", id),
           client: interface_type_def.client
         }
       end}
    end
  end

  @doc "A unique identifier for this InterfaceTypeDef."
  @spec id(t()) :: {:ok, Dagger.InterfaceTypeDefID.t()} | {:error, term()}
  def id(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("id")

    Client.execute(interface_type_def.client, query_builder)
  end

  @doc "The name of the interface."
  @spec name(t()) :: {:ok, String.t()} | {:error, term()}
  def name(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("name")

    Client.execute(interface_type_def.client, query_builder)
  end

  @doc "The location of this interface declaration."
  @spec source_map(t()) :: Dagger.SourceMap.t()
  def source_map(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("sourceMap")

    %Dagger.SourceMap{
      query_builder: query_builder,
      client: interface_type_def.client
    }
  end

  @doc "If this InterfaceTypeDef is associated with a Module, the name of the module. Unset otherwise."
  @spec source_module_name(t()) :: {:ok, String.t()} | {:error, term()}
  def source_module_name(%__MODULE__{} = interface_type_def) do
    query_builder =
      interface_type_def.query_builder |> QB.select("sourceModuleName")

    Client.execute(interface_type_def.client, query_builder)
  end
end
