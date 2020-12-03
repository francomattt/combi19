# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.find_or_create_by(name: 'eliminado');

  # User.create(name: "Eliminado", role: 1, email: "asdqwe@gamil.com", encrypted_password: "123456", last_name: "eliminado", dni: 123, birth_date: "01-05-1995")
   #Insumo.create(tipo: "agua", cant: 30, created_at: 2020-11-20 01:19:33 UTC, update_at: 2020-11-20 01:19:33 UTC)
    #Insumo.create(tipo: "agua", cant: 30)
    #Driver.create(name)
    #User.create(name: "eliminado", email: "eliminado@gmail.com" , last_name: "eliminado" , dni: 37338555 , birth_date: "1995-05-01")
    drivers=User.new({ id: 88, email: "eliminado@gmail.com",encrypted_password: "123456", name: "eliminado", last_name: "eliminado", dni: 37338555, birth_date: "1995-05-01", suscribed: nil, deleted_at: nil, role: 1, credit_card_id: nil})
    
    #User.create(id: 888, email: "eliminado@gmail.com",encrypted_password: "123456", created_at: "2020-11-14 22:27:56", updated_at: "2020-11-20 02:50:27", name: "eliminado", last_name: "eliminado", dni: 37338555, birth_date: "1995-05-01", suscribed: nil, deleted_at: nil, role: "driver", credit_card_id: nil)
    
    #User.find_or_create_by(id: 888, email: "eliminado@gmail.com",encrypted_password: "123456", created_at: "2020-11-14 22:27:56", updated_at: "2020-11-20 02:50:27", name: "eliminado", last_name: "eliminado", dni: 37338555, birth_date: "1995-05-01", suscribed: nil, deleted_at: nil, role: "driver", credit_card_id: nil)
