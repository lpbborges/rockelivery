defmodule Rockelivery.Factory do
  use ExMachina

  def user_params_factory do
    %{
      address: "Nowhere street",
      age: 27,
      cep: "12345678",
      cpf: "12345678900",
      email: "johndoe@rockelivery.com",
      name: "John Doe",
      password: "123456"
    }
  end
end
