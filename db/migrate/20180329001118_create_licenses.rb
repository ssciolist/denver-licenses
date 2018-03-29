class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.string :bfn
      t.string :license_type
      t.string :license_status
      t.string :license_sub_type
      t.string :expiration_date
      t.string :entity_name
      t.string :establishment_address
    end
  end
end
