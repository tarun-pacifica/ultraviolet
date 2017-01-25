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

require 'rails_helper'

RSpec.describe Radiation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
