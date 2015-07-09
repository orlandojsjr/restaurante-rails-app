class AddCollumnPratoIdToReceitas < ActiveRecord::Migration
  def change
    add_column :receitas, :prato_id, :integer
  end
end
