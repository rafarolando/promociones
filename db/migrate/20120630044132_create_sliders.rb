class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :image
      t.integer :id_empresa

      t.timestamps
    end
  end
end
