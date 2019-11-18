class ChangeDescripcion < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :descripcion, :text
  end
end
