# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CSV.foreach('./data/active_business_licenses.csv', headers: true, header_converters: :symbol) do |row|
  License.create!(bfn:   row[:bfn],
                  license_type: row[:license_type],
                  license_status: row[:license_status],
                  license_sub_type: row[:license_sub_type],
                  expiration_date: row[:expiration_date],
                  entity_name: row[:entity_name],
                  establishment_address: row[:establishment_address])
end
