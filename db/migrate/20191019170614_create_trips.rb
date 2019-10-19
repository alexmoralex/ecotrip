class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :tarifa
      t.time :duracion
      t.string :imagen

      t.timestamps
    end
  end
end
