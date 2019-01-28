class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true, presence: { message: "Este campo es obligatorio." },
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'},
        uniqueness: {message: "already subscribed"}
        
    validates :nombre, :presence => true, presence: { message: "Este campo es obligatorio." }
    validates :telefono, :presence => true, presence: { message: "Este campo es obligatorio."  },
                        numericality: { only_integer: true },
                        length: {minimum: 12, maximum: 12}
    validates :tipo, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :operacion, :presence => true, presence: { message: "Este campo es obligatorio."  }, on: :create
    validates :direccion, :presence => true, presence: { message: "Este campo es obligatorio."  }, 
                        :format => { :with => /[a-zA-Z0-9]{5,}/ ,
                        :message => 'Solamente números y letras están permitidas.'}
                        
                     


                       


end

