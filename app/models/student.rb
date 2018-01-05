# == Schema Information
#
# Table name: students
#
#  id                        :integer          not null, primary key
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  person_id                 :integer
#  registration_file_name    :string
#  registration_content_type :string
#  registration_file_size    :integer
#  registration_updated_at   :datetime
#

class Student < ApplicationRecord
	belongs_to :person, inverse_of: :students
	#belongs_to :event
	has_many :student_events
	has_many :events, through: :student_events

	has_attached_file :registration, content_type: ["image/jpeg", "image/png"], styles: {
      thumb: "100x100#",
      small: "150x150>",
      medium: "200x200" }
  	validates_attachment :registration, presence: true,
  		content_type: { content_type: ["image/jpeg", "image/png"] }
	
	#validates :registration, uniqueness: true
	validates :registration, presence: true, on: :new
	validates :person, presence: true

	accepts_nested_attributes_for :person
	accepts_nested_attributes_for :student_events

	paginates_per 5
  
  def to_s
    "#{self.person.name}"
  end
  #resourcify
end
