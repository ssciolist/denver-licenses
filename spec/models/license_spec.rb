require 'rails_helper'

describe License do
  describe 'Validations' do
    context 'Invalid attributes' do
      it 'Is invalid without all attributes' do
        license = License.new(license_type: "Garage",
                              license_sub_type: "NA",
                              expiration_date: "8/15/2018 12:00:00 AM",
                              entity_name: "GUZMAN TIRES AND AUTOMOTIVE",
                              establishment_address: "5095  WASHINGTON ST  DENVER 80216")

        license_2 = License.new(license_type: "Garage",
                                license_status: "Active",
                                expiration_date: "8/15/2018 12:00:00 AM",
                                entity_name: "GUZMAN TIRES AND AUTOMOTIVE",
                                establishment_address: "5095  WASHINGTON ST  DENVER 80216")

        license_3 = License.new(license_type: "Garage",
                                license_status: "Active",
                                license_sub_type: "NA",
                                entity_name: "GUZMAN TIRES AND AUTOMOTIVE",
                                establishment_address: "5095  WASHINGTON ST  DENVER 80216")

        license_4 = License.new(license_type: "Garage",
                                license_status: "Active",
                                license_sub_type: "NA",
                                expiration_date: "8/15/2018 12:00:00 AM",
                                establishment_address: "5095  WASHINGTON ST  DENVER 80216")

        license_5 = License.new(license_type: "Garage",
                                license_status: "Active",
                                license_sub_type: "NA",
                                expiration_date: "8/15/2018 12:00:00 AM",
                                entity_name: "GUZMAN TIRES AND AUTOMOTIVE")

        license_6 = License.new(license_type: "Garage",
                                license_status: "Active",
                                license_sub_type: "NA",
                                expiration_date: "8/15/2018 12:00:00 AM",
                                entity_name: "GUZMAN TIRES AND AUTOMOTIVE",
                                establishment_address: "5095  WASHINGTON ST  DENVER 80216")

        expect(item1).to_not be_valid
        expect(item2).to_not be_valid
        expect(item3).to_not be_valid
        expect(item4).to_not be_valid
        expect(item5).to_not be_valid
        expect(item6).to be_valid
      end
    end
  end

  describe 'Relationships' do
    it 'Belongs to a ' do

    end
  end

  describe 'Methods' do
    describe '.' do
      it '' do

      end
    end
  end
end
