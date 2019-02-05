class Orientacion < ApplicationRecord
    has_and_belongs_to_many :pedidos
end
