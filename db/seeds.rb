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
User.create(name: 'Richi', phone_number: '342-155-1746', password_digest: 123, address: 'Stretto Avide 151
    Mancini laziale, 01521 Carbonia-Iglesias (FE)', good_sam: false)
User.create(name: 'Jamie', phone_number: '660-979-0318', password_digest: 123, address: '919 Jacobs Glens Suite 417
    South Michelleview, ND 95517', good_sam: false)
User.create(name: 'Doug', password_digest: 123, phone_number: '343-451-8790', address: 'Paseo de Hugo Casals 9
    Cádiz, 60507', good_sam: false)


    Dog.create(name: 'Romulus', breed: 'Rotty', size: 'Big', age: 8, temperament: 'Good Boy', image: [
        "https://lh3.googleusercontent.com/pw/ACtC-3fyqqeGqeBVy4-XTDl-W2jrYwcUNbmngzT5ennjzP8jr4Yv3kB6jtccpahNfpEfWPWXegCWBllucRE0QLQo6jNR-uiikfUxZfMuwUHsYTrYkqWXQQMicKdmTHXcZmQsaZe_kHPqIuTC2DoTBQo6oNDnew=w756-h1008-no?authuser=0",
        "https://lh3.googleusercontent.com/pw/ACtC-3ckUvoHXgKI46snYBgGbbQUqhPXxWpapUoIlh9Cne9haux0caBL7qqCba9y9wfuP2Ir-PFSU3O0oxwtYgrTmVJ5sJok7MDpF-wqer1T2UH13FveLgxpTjp_3Pl77uYhQbl8dayVpdtIr5GT9Bs0A0CFSQ=w756-h1008-no?authuser=0",
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
    Dog.create( name: 'Tiki', breed: 'Black Lab', size: 'Large', age: 9, temperament: 'Very Friendly', image: [
        'https://lh3.googleusercontent.com/pw/ACtC-3dJNy6eBwU6r62gYsLPZab0Bn4u1oNr0428FHF25bzt_z8rEx6NLI8-1yGFIK5suEg95JPfEB8zULLrwuMskSWAqb1-9Qeeaols3DZf0ZIj6hphx8Tl3Fmr3bL93REFOZ927Tiumk3ky6sxHWS7pJUh2g=w841-h1121-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dzb2q4QL2xuIq0aAmYN3Fm-F0TwmXzx2NZoX3H80U_2KjSGWcshTUxBZufEjBdEDiuOc3v_CbMxJfmf6UYvwvvlfjr-qfMH_FAS_NKVdbjwQYTKbj5Tnjdah7eW0adFpErpO624on7q_DQ775Bb0gukQ=w802-h1069-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3ep2c1P3R_v2wE_Z-U0KfhZwmgT9monKs64xYJC96yBWIEUGKVHWVvHRhfGGSrJOXRrdyMk3R4eGXtgxcLnSU1VQ7qhAHIchjK78eb2-VVbyh9IHfkb8oyV_728EpXgqIyLMwf54u6dtwPmPhf71LPIMA=w841-h1121-no?authuser=0'
    ], user_id: 6)

        MissingFlyer.create(latitude: 40.65598491251815, longitude: -74.00443091779843, found: false, reward: true, description: "Very friendly, easily coaxed with food, not aggressive with food.  Please call 932.381.1990 if found", dog_id: 1)
        MissingFlyer.create(latitude: 40.70731002707989, longitude: -73.87788964398466, found: false, reward: false, description: "Playful and loves kids, will most likely gravitate towards them.  Last seen in the park, ran off leash around 5pm", dog_id: 3)
        MissingFlyer.create(latitude: 40.606292835434225, longitude:  -73.9348718081522, found: false, reward: false, description: "Nervous around strangers, may be agressive if not familiar with you.  Please report from a distance", dog_id: 4)

        

        Sighting.create(latitude: 40.69329472722745, longitude: -73.97762698692436, description: "Seen running down the street heading west on smith street", user_id: 6, missing_flyer_id: 1)
        Sighting.create(latitude: 40.655961610229284, longitude: -74.01158776112091, description: "Possible stray, no collar on but looks like a house dog")
        Sighting.create(latitude: 40.69329472722745, longitude: -73.97762698692436, description: "Spotted at 7pm heading west on the sidewalk on Grand Ave", user_id: 6)
        Sighting.create(latitude:  40.74188846502518, longitude:  -73.75043832402402, description: "Spotted at 7pm heading west on the sidewalk on Grand Ave", missing_flyer_id: 2)
       


    
    

puts "🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱"    