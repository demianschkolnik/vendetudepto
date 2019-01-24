class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'}
    validates :nombre, :presence => true, presence: { message: "must be given please" }
    validates :telefono, :presence => true, presence: { message: "must be given please" }
    validates :tipo, :presence => true, presence: { message: "must be given please" }
    validates :operacion, :presence => true, presence: { message: "must be given please" }
    validates :direccion, :presence => true, presence: { message: "must be given please" }
end
