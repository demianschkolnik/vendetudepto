class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'}
    validates :nombre, :presence => true, :format =>  {:message => 'Campo requerido'}
    validates :telefono, :presence => true, :format =>  {:message => 'Campo requerido'}
    validates :tipo, :presence => true, :format =>  {:message => 'Campo requerido'}
    validates :operacion, :presence => true, :format =>  {:message => 'Campo requerido'}
    validates :direccion, :presence => true, :format =>  {:message => 'Campo requerido'}
    
end
