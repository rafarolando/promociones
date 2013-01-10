class CreateSupercategoria < ActiveRecord::Migration
  def change
    create_table :supercategoria do |t|
      t.string :nombre
      t.integer :id_categoria

      t.timestamps
    end
  end
end
