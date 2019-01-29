module PedidosHelper

    def checked(area)
    @pedido.orientacion.nil? ? false: @pedido.orientacion.match(area)
    end

end
