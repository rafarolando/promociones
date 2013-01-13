class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.integer :telefono
      t.string :asunto
      t.text :mensaje

      t.timestamps
    end
  end
end
