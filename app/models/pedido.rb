class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'}
    validates :nombre, :presence => true, :message => 'Campo requerido'
    validates :telefono, :presence => true, :message => 'Campo requerido'
    validates :tipo, :presence => true, :message => 'Campo requerido'
    validates :operacion, :presence => true, :message => 'Campo requerido'
    validates :direccion, :presence => true, :message => 'Campo requerido'

end
