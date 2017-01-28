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

class Speechwriter < ApplicationRecord
end
