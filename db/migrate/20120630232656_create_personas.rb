class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :ci
      t.string :nombre
      t.string :apaterno
      t.string :amaterno
      t.string :telefono
      t.integer :id_usuario

      t.timestamps
    end
  end
end
