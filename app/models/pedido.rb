class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'}
        presence: { message: "Este campo es obligatorio." }
    validates :nombre, :presence => true, presence: { message: "Este campo es obligatorio." }
    validates :telefono, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :tipo, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :operacion, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :direccion, :presence => true, presence: { message: "Este campo es obligatorio."  }
end
