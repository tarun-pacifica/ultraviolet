# == Schema Information
#
# Table name: speechwriters
#
#  id         :integer          not null, primary key
#  message    :string
#  warning    :string
#  sunscreen  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Speechwriter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
