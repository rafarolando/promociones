class CreateDescripcions < ActiveRecord::Migration
  def change
    create_table :descripcions do |t|
      t.string :descripcion
      t.string :direccion
      t.string :telefono
      t.string :email
      t.integer :id_empresa

      t.timestamps
    end
  end
end
