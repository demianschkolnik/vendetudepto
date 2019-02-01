class AddSlugToPedidos < ActiveRecord::Migration[5.2]
  def change
    add_column :pedidos, :slug, :string
    add_index :pedidos, :slug
  end
end
