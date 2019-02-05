module PedidosHelper

    def checked(area)
        @pedidos.orientacion.nil? ? false : @pedidos.orientacion.match(area)
      end
end
