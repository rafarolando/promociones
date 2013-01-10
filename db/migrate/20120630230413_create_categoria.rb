class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.integer :id_ciudad

      t.timestamps
    end
  end
end
