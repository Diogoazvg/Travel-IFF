# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  day         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  travel_id   :integer
#  description :text
#

class Event < ApplicationRecord
	belongs_to :travel, inverse_of: :events
	has_many :student_events
	has_many :students, through: :student_events

	validates :travel_id, presence: true
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :day, presence: true
	validates :description, presence: true

	paginates_per 5
  resourcify
end
