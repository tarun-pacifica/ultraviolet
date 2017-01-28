# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe City, type: :model do
	
	it "Successfully saves to database." do
		expect {City.create :name => Faker::Address.city}.to change{City.count}.by 1 
	end

	let (:city) { City.create :name => Faker::Address.city }
	it "The name field is of type 'String'" do
		expect(city.name.class).to eq(String)
	end

	it "Is valid with valid attributes." do
		expect(city).to be_valid
	end

	it "Is NOT valid without a name." do
		city = City.create(name: nil)
		expect(city).to_not be_valid
	end

	it "should associate correctly with radiations"


end
