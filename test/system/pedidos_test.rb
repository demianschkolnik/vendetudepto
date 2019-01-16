require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "creating a Pedido" do
    visit pedidos_url
    click_on "New Pedido"

    fill_in "Anio", with: @pedido.anio
    fill_in "Bano", with: @pedido.bano
    fill_in "Comuna", with: @pedido.comuna
    fill_in "Descripcion", with: @pedido.descripcion
    fill_in "Direccion", with: @pedido.direccion
    fill_in "Dorms", with: @pedido.dorms
    fill_in "Estacionamiento", with: @pedido.estacionamiento
    fill_in "Mail", with: @pedido.mail
    fill_in "Nombre", with: @pedido.nombre
    fill_in "Operacion", with: @pedido.operacion
    fill_in "Piso", with: @pedido.piso
    fill_in "Region", with: @pedido.region
    fill_in "Superficie", with: @pedido.superficie
    fill_in "Telefono", with: @pedido.telefono
    fill_in "Tipo", with: @pedido.tipo
    click_on "Create Pedido"

    assert_text "Pedido was successfully created"
    click_on "Back"
  end

  test "updating a Pedido" do
    visit pedidos_url
    click_on "Edit", match: :first

    fill_in "Anio", with: @pedido.anio
    fill_in "Bano", with: @pedido.bano
    fill_in "Comuna", with: @pedido.comuna
    fill_in "Descripcion", with: @pedido.descripcion
    fill_in "Direccion", with: @pedido.direccion
    fill_in "Dorms", with: @pedido.dorms
    fill_in "Estacionamiento", with: @pedido.estacionamiento
    fill_in "Mail", with: @pedido.mail
    fill_in "Nombre", with: @pedido.nombre
    fill_in "Operacion", with: @pedido.operacion
    fill_in "Piso", with: @pedido.piso
    fill_in "Region", with: @pedido.region
    fill_in "Superficie", with: @pedido.superficie
    fill_in "Telefono", with: @pedido.telefono
    fill_in "Tipo", with: @pedido.tipo
    click_on "Update Pedido"

    assert_text "Pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido" do
    visit pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido was successfully destroyed"
  end
end
