defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "address" => "Nowhere street",
      "age" => 27,
      "cep" => "12345678",
      "cpf" => "12345678900",
      "email" => "johndoe@rockelivery.com",
      "name" => "John Doe",
      "password" => "123456"
    }
  end

  def user_factory do
    %User{
      address: "Nowhere street",
      age: 27,
      cep: "12345678",
      cpf: "12345678900",
      email: "johndoe@rockelivery.com",
      name: "John Doe",
      password: "123456",
      id: "98063718-b42d-46f1-a1fe-1d8e1c0c936a"
    }
  end

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
