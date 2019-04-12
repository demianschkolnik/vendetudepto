class AddOriginToPedido < ActiveRecord::Migration[5.2]
  def change
    add_column :pedidos, :origen, :string
  end
end
