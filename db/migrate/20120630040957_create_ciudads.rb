class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.integer :id_empresa

      t.timestamps
    end
  end
end
