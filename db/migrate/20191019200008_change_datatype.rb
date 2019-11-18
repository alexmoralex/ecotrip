class ChangeDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :duracion, :integer
  end
end
