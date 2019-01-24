class Pedido < ApplicationRecord
    validates :mail,   
        :presence => true,
        :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
                     :message => 'Invalid e-mail! Please provide a valid e-mail address'},
    validates :nombre, :presence => true
    validates :telefono, :presence => true
    
end
