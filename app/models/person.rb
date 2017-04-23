# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  address    :string
#  identity   :string
#  cpf        :string
#  birth      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
	has_many :drivers, inverse_of: :person
	has_many :students, inverse_of: :person

	validates :name, presence: true
	validates :phone, presence: true
	validates :identity, presence: true
	validates :identity, uniqueness: true, on: :new
	validates :cpf, presence: true
	validates :cpf, uniqueness: true, on: :new
	validates_each :cpf do |record, attr, value|
    	record.errors.add(attr, 'não é válido') unless CpfUtils.cpf_valido? value
  	end
	validates :birth, presence: true

	resourcify
end
