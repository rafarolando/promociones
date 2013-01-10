class CreatePromocions < ActiveRecord::Migration
  def change
    create_table :promocions do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fechaini
      t.date :fechafin
      t.integer :id_empresa
      t.integer :id_supercategoria

      t.timestamps
    end
  end
end
