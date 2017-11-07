# == Schema Information
#
# Table name: travels
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  day         :string
#

class Travel < ApplicationRecord
	has_many :events, :dependent => :destroy
	has_many :vehicles

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :day, presence: true
	validates :description, presence: true

	paginates_per 5

 #  resourcify
end
