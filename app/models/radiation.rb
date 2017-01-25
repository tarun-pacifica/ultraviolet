# == Schema Information
#
# Table name: radiations
#
#  id          :integer          not null, primary key
#  city        :string
#  index       :integer
#  time        :time
#  date        :date
#  utcdatetime :string
#  city_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Radiation < ApplicationRecord
	belongs_to :city
end
