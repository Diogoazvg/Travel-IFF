# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  name                   :string
#  phone                  :string
#  rg                     :string
#  cpf                    :string
#  birthday               :date
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable 
  has_many :events, through: :user_events

  validates :cpf, presence: true
  validates :cpf, uniqueness: true#, on: :new
  validates :rg, presence: true
  validates :rg, uniqueness: true#, on: :new 
  validates_each :cpf do |record, attr, value|
      record.errors.add(attr, 'não é válido') unless CpfUtils.cpf_valido? value
    end     
end