defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    token = "12345test"

    response = render(UsersView, "create.json", token: token, user: user)

    assert %{
             message: "User created!",
             token: "12345test",
             user: %Rockelivery.User{
               address: "Nowhere street",
               age: 27,
               cep: "12345678",
               cpf: "12345678900",
               email: "johndoe@rockelivery.com",
               id: "98063718-b42d-46f1-a1fe-1d8e1c0c936a",
               inserted_at: nil,
               name: "John Doe",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
