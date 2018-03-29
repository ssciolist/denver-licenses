class AddLatitudeAndLongitudeToLicenses < ActiveRecord::Migration[5.1]
  def change
    add_column :licenses, :latitude, :float
    add_column :licenses, :longitude, :float
  end
end
