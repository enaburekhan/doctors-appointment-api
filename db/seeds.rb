# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'test_user', password: '123456', age: 41)
Doctor.create(name: 'Dr Osamu Akpede', specialization: 'Gynecologist', experience: '7 Years', image: 'https://image.freepik.com/free-vector/smiley-doctor-with-clipboard-stethoscope_23-2147657761.jpg')
Doctor.create(name: 'Dr Clario Akpede', specialization: 'Obstetrician', experience: '6 Years', image: 'https://image.freepik.com/free-vector/therapist-physician-doctor_82574-5381.jpg')
Doctor.create(name: 'Dr Osato David', specialization: 'Optamologist', experience: '8 Years', image: 'https://img.freepik.com/free-vector/smiley-female-doctor-with-clipboard-stethoscope_23-2147657762.jpg')
Doctor.create(name: 'Dr Mark Joe', specialization: 'Orthopaedic surgeon', experience: '9 Years', image: 'https://image.freepik.com/free-vector/female-doctor-pointing-clipboard_23-2147791255.jpg')



