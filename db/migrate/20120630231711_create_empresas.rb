class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.integer :estado
      t.string :imagen
      t.integer :id_categoria
      t.integer :id_usuario
      t.integer :id_departamento
      t.integer :id_ciudad
      t.string  :direccion
      t.string :pagina
      t.string :telefono
      t.text :descripcion
      t.text :horario

      t.timestamps
    end
  end
end
