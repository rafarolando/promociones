class CreateCupons < ActiveRecord::Migration
  def change
    create_table :cupons do |t|
      t.string :descripcion
      t.string :descuento
      t.integer :cantidad
      t.date :fechaini
      t.date :fechafin
      t.integer :id_empresa
      t.integer :id_supercategoria

      t.timestamps
    end
  end
end
