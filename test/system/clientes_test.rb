require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Activo", with: @cliente.activo
    fill_in "Banosmax", with: @cliente.banosmax
    fill_in "Banosmin", with: @cliente.banosmin
    fill_in "Comuna1", with: @cliente.comuna1
    fill_in "Comuna2", with: @cliente.comuna2
    fill_in "Comuna3", with: @cliente.comuna3
    fill_in "Comuna4", with: @cliente.comuna4
    fill_in "Comuna5", with: @cliente.comuna5
    fill_in "Comuna6", with: @cliente.comuna6
    fill_in "Dormitoriosmax", with: @cliente.dormitoriosmax
    fill_in "Dormitoriosmin", with: @cliente.dormitoriosmin
    fill_in "Estacionamientos", with: @cliente.estacionamientos
    fill_in "Estado", with: @cliente.estado
    fill_in "Fechacompra", with: @cliente.fechacompra
    fill_in "Latmax", with: @cliente.latmax
    fill_in "Latmin", with: @cliente.latmin
    fill_in "Linea", with: @cliente.linea
    fill_in "Lineab", with: @cliente.lineab
    fill_in "Lineac", with: @cliente.lineac
    fill_in "Lonmax", with: @cliente.lonmax
    fill_in "Lonmin", with: @cliente.lonmin
    fill_in "Mail", with: @cliente.mail
    fill_in "Metrodistance", with: @cliente.metrodistance
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Operacion", with: @cliente.operacion
    fill_in "Preciomax", with: @cliente.preciomax
    fill_in "Preciomin", with: @cliente.preciomin
    fill_in "Prioridad", with: @cliente.prioridad
    fill_in "Region", with: @cliente.region
    fill_in "Rentmin", with: @cliente.rentmin
    fill_in "Sendmail", with: @cliente.sendmail
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Tipo", with: @cliente.tipo
    fill_in "Totalmax", with: @cliente.totalmax
    fill_in "Totalmin", with: @cliente.totalmin
    fill_in "Utilmax", with: @cliente.utilmax
    fill_in "Utilmin", with: @cliente.utilmin
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @cliente.activo
    fill_in "Banosmax", with: @cliente.banosmax
    fill_in "Banosmin", with: @cliente.banosmin
    fill_in "Comuna1", with: @cliente.comuna1
    fill_in "Comuna2", with: @cliente.comuna2
    fill_in "Comuna3", with: @cliente.comuna3
    fill_in "Comuna4", with: @cliente.comuna4
    fill_in "Comuna5", with: @cliente.comuna5
    fill_in "Comuna6", with: @cliente.comuna6
    fill_in "Dormitoriosmax", with: @cliente.dormitoriosmax
    fill_in "Dormitoriosmin", with: @cliente.dormitoriosmin
    fill_in "Estacionamientos", with: @cliente.estacionamientos
    fill_in "Estado", with: @cliente.estado
    fill_in "Fechacompra", with: @cliente.fechacompra
    fill_in "Latmax", with: @cliente.latmax
    fill_in "Latmin", with: @cliente.latmin
    fill_in "Linea", with: @cliente.linea
    fill_in "Lineab", with: @cliente.lineab
    fill_in "Lineac", with: @cliente.lineac
    fill_in "Lonmax", with: @cliente.lonmax
    fill_in "Lonmin", with: @cliente.lonmin
    fill_in "Mail", with: @cliente.mail
    fill_in "Metrodistance", with: @cliente.metrodistance
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Operacion", with: @cliente.operacion
    fill_in "Preciomax", with: @cliente.preciomax
    fill_in "Preciomin", with: @cliente.preciomin
    fill_in "Prioridad", with: @cliente.prioridad
    fill_in "Region", with: @cliente.region
    fill_in "Rentmin", with: @cliente.rentmin
    fill_in "Sendmail", with: @cliente.sendmail
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Tipo", with: @cliente.tipo
    fill_in "Totalmax", with: @cliente.totalmax
    fill_in "Totalmin", with: @cliente.totalmin
    fill_in "Utilmax", with: @cliente.utilmax
    fill_in "Utilmin", with: @cliente.utilmin
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
