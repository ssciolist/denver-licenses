class License < ActiveRecord::Base
  validates :license_type, :license_sub_type, :license_status, :expiration_date, :entity_name, :establishment_address, presence: true
  geocoded_by :establishment_address
  after_validation :geocode

  def self.search(search)
    near("#{search}", 1)
  end
end
