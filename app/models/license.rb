class License < ActiveRecord::Base
  validates :license_type, :license_sub_type, :license_status, :expiration_date, :entity_name, :establishment_address, presence: true
end
