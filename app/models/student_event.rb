# == Schema Information
#
# Table name: student_events
#
#  id         :integer          not null, primary key
#  student_id :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StudentEvent < ApplicationRecord
  belongs_to :student
  belongs_to :event

  resourcify
end
