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

FactoryGirl.define do
  factory :speechwriter do
    message "MyString"
    warning "MyString"
    sunscreen false
  end
end
