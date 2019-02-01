class Pedido < ApplicationRecord
    
    validates :mail,   
        :presence => true, presence: { message: "Este campo es obligatorio." },
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Correo inválido! Porfavor ingresar correo correctamente'},
        uniqueness: {message: "Ya ingresado."}
        
    validates :nombre, :presence => true, presence: { message: "Este campo es obligatorio." }
    validates :telefono, :presence => true, presence: { message: "Este campo es obligatorio."  },
                        numericality: { only_integer: true },
                        length: {minimum: 12, maximum: 12}
    validates :tipo, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :operacion, :presence => true, presence: { message: "Este campo es obligatorio."  }, on: :create
    validates :direccion, :presence => true, presence: { message: "Este campo es obligatorio."  }
    validates :region, :presence => true, if: -> { :region != 'Seleccione región' }
    
    validates :slug, uniqueness: true, presence: true,
                 exclusion: {in: %w[signup login]}
    before_validation :generate_slug

    def to_param
      slug # or "#{id}-#{name}".parameterize
    end
    
    def generate_slug
      self.slug ||= name.parameterize
    end



                       


end

