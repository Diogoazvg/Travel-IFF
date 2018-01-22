# == Schema Information
#
# Table name: drivers
#
#  id         :integer          not null, primary key
#  cnh        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#  person_id  :integer
#  vehicle_id :integer
#  name       :string
#  rg         :string
#  cpf        :string
#

require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
