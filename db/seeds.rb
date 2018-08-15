puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'

restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '06 45 67 86 34',
    category:     'chinese'
  },
  {
    name:         'Les frites',
    address:      'Place centrale de Bruges',
    phone_number: '06 12 45 89 72',
    category:     'belgian'
  },
  {
    name:         'La Fossetta',
    address:      '15 Rue des Fossés, 59000 Lille',
    phone_number: '03 20 43 89 90',
    category:     'italian'
  },
  {
    name:         'Les compagnons de la grappe',
    address:      '26 Rue Lepelletier, 59000 Lille',
    category:     'french',
  },
  {
    name:         'Sushi eat',
    address:      'Tokyo Avenue',
    phone_number: '07 34 62 12 87',
    category:     'japanese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
