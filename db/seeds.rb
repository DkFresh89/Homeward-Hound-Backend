# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Pesh', password_digest: 123, address: 'Cuesta de Anna Borrell 15
    Alicante, 21914', phone_number: '+1-546-829-2634', good_sam: false)
User.create(name: 'Nich', password_digest: 123, address: '7867 Adam Harbor Apt. 529
    Lanestad, WI 86385', phone_number: '+39 947 87 64 5939', good_sam: false)
User.create(name: 'Max', password_digest: 123, address: 'Cuesta de Rafael Carretero 71 Puerta 0 
    Granada, 26339', phone_number: '437-877-5994', good_sam: true)


    Dog.create(name: 'Romulus', breed: 'Rotty', size: 'Big', age: 8, temperament: 'Good Boy', image: [
        "https://photos.app.goo.gl/SxUiAxxs3tHf2j7E9",
        "https://photos.app.goo.gl/idf4hkTTNhUDqFYPA",
        "https://lh3.googleusercontent.com/pw/ACtC-3d58280a6z8LUbNrYCFbo6vyTAFkjTWC4-nW0hQNkdO0pYWTEPj_iCakV7GK93Vs6ICl34WyYaTTb_G63zy9T1a4haTY0lCPO6kjweH-Z1sO-qGlOFXao9bSDwtZYb7e842ISxwcMfOjyRVTILAeJCrzg=w756-h1008-no?authuser=0"
      ], user_id: 1)
    Dog.create(name: 'Dog de Nich', breed: 'Crazy', size: 'Medium', age: 2, temperament: 'Cray', image: [
        "https://images.dog.ceo/breeds/hound-afghan/n02088094_7260.jpg",
        "https://images.dog.ceo/breeds/hound-basset/n02088238_7855.jpg",
        "https://images.dog.ceo/breeds/hound-blood/n02088466_7606.jpg"
    ], user_id: 2)
    Dog.create(name: 'TBD', breed: 'Vizsla', size: 'Big', age: 1, temperament: 'TBD', image: [
        "https://images.dog.ceo/breeds/vizsla/n02100583_11473.jpg",
        "https://images.dog.ceo/breeds/vizsla/n02100583_1908.jpg",
        "https://images.dog.ceo/breeds/vizsla/n02100583_6000.jpg"
      ], user_id: 3)



    

puts "🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱"    