class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'}
    validates :nombre, :presence => true
    validates :telefono, :presence => true
    validates :tipo, :presence => true
    validates :operacion, :presence => true
    validates :direccion, :presence => true
end
