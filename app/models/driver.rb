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
#

class Driver < ApplicationRecord
	belongs_to :person, inverse_of: :drivers
	
	validates :cnh, presence: true
	validates :cnh, uniqueness: true
	validates :cnh, numericality: true
	validates :category, presence: true

	accepts_nested_attributes_for :person
end
