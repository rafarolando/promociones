# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 Ciudad.create([
   { :nombre => 'Trinidad' },
   { :nombre => 'Cochabamba' },
   { :nombre => 'La Paz' },
   { :nombre => 'Oruro' },
   { :nombre => 'Cobija' },
   { :nombre => 'Potosi' },
   { :nombre => 'Santa Cruz de la sierra' },
   { :nombre => 'Sucre' },
   { :nombre => 'Tarija' }

   ])

 
 Departamento.create([
   { :nombre => 'Beni' },
   { :nombre => 'Cochabamba' },
   { :nombre => 'La Paz' },
   { :nombre => 'Oruro' },
   { :nombre => 'Pando' },
   { :nombre => 'Potosi' },
   { :nombre => 'Santa Cruz' },
   { :nombre => 'Sucre' },
   { :nombre => 'Tarija' }

   ])
   
    Categorium.create([
   { :nombre => 'Comida', :id_ciudad=>'6' },
   { :nombre => 'Compras', :id_ciudad=>'6' },
   { :nombre => 'Entretenimientos', :id_ciudad=>'6' },
   { :nombre => 'Hogar y Oficina', :id_ciudad=>'6' },
   { :nombre => 'Hoteles y Turismo', :id_ciudad=>'6' },
   { :nombre => 'Salud y Belleza', :id_ciudad=>'6' },
   { :nombre => 'Servicios', :id_ciudad=>'6' }
   ])
   Supercategorium.create([
   { :nombre => 'Cafes', :id_categoria=>'1' },
   { :nombre => 'Heladeria', :id_categoria=>'1'  },
   { :nombre => 'Licoreria', :id_categoria=>'1'  },
   { :nombre => 'Informatica', :id_categoria=>'2'  },
   { :nombre => 'Ropa', :id_categoria=>'2'  },
   { :nombre => 'Bares', :id_categoria=>'3'  },
   { :nombre => 'Muebles', :id_categoria=>'4' },
   { :nombre => 'Hoteles', :id_categoria=>'5'  },
   { :nombre => 'Viajes y Turismo', :id_categoria=>'5'  },
   { :nombre => 'Gimnasios', :id_categoria=>'6'  },
   { :nombre => 'Opticas', :id_categoria=>'6'  },
   { :nombre => 'Fiestas y Eventos', :id_categoria=>'7'  },
   { :nombre => 'Lavado de Autos', :id_categoria=>'7'  }
   ])
   
   Estado.create([
   { :nombre => 'Inactivo' },
   { :nombre => 'Activo' }
   ])
   



