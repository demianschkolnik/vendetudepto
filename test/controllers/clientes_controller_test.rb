require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { activo: @cliente.activo, banosmax: @cliente.banosmax, banosmin: @cliente.banosmin, comuna1: @cliente.comuna1, comuna2: @cliente.comuna2, comuna3: @cliente.comuna3, comuna4: @cliente.comuna4, comuna5: @cliente.comuna5, comuna6: @cliente.comuna6, dormitoriosmax: @cliente.dormitoriosmax, dormitoriosmin: @cliente.dormitoriosmin, estacionamientos: @cliente.estacionamientos, estado: @cliente.estado, fechacompra: @cliente.fechacompra, latmax: @cliente.latmax, latmin: @cliente.latmin, linea: @cliente.linea, lineab: @cliente.lineab, lineac: @cliente.lineac, lonmax: @cliente.lonmax, lonmin: @cliente.lonmin, mail: @cliente.mail, metrodistance: @cliente.metrodistance, nombre: @cliente.nombre, operacion: @cliente.operacion, preciomax: @cliente.preciomax, preciomin: @cliente.preciomin, prioridad: @cliente.prioridad, region: @cliente.region, rentmin: @cliente.rentmin, sendmail: @cliente.sendmail, telefono: @cliente.telefono, tipo: @cliente.tipo, totalmax: @cliente.totalmax, totalmin: @cliente.totalmin, utilmax: @cliente.utilmax, utilmin: @cliente.utilmin } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { activo: @cliente.activo, banosmax: @cliente.banosmax, banosmin: @cliente.banosmin, comuna1: @cliente.comuna1, comuna2: @cliente.comuna2, comuna3: @cliente.comuna3, comuna4: @cliente.comuna4, comuna5: @cliente.comuna5, comuna6: @cliente.comuna6, dormitoriosmax: @cliente.dormitoriosmax, dormitoriosmin: @cliente.dormitoriosmin, estacionamientos: @cliente.estacionamientos, estado: @cliente.estado, fechacompra: @cliente.fechacompra, latmax: @cliente.latmax, latmin: @cliente.latmin, linea: @cliente.linea, lineab: @cliente.lineab, lineac: @cliente.lineac, lonmax: @cliente.lonmax, lonmin: @cliente.lonmin, mail: @cliente.mail, metrodistance: @cliente.metrodistance, nombre: @cliente.nombre, operacion: @cliente.operacion, preciomax: @cliente.preciomax, preciomin: @cliente.preciomin, prioridad: @cliente.prioridad, region: @cliente.region, rentmin: @cliente.rentmin, sendmail: @cliente.sendmail, telefono: @cliente.telefono, tipo: @cliente.tipo, totalmax: @cliente.totalmax, totalmin: @cliente.totalmin, utilmax: @cliente.utilmax, utilmin: @cliente.utilmin } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
