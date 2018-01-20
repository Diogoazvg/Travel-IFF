# == Schema Information
#
# Table name: user_events
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, uniqueness: { scope: :event,
    message: "O aluno não já está cadastrado nesse evento." }
end
