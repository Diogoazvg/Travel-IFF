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

class Driver < ApplicationRecord
	belongs_to :person, inverse_of: :drivers
	belongs_to :vehicle
	
	validates :cnh, presence: true
	validates :cnh, uniqueness: true
	validates :cnh, numericality: true
	validates :category, presence: true
	validates :vehicle_id, presence: true
	validates :name, presence: true
	validates :rg, presence: true
	validates :rg, uniqueness: true
	validates :cpf, presence: true
	validates :cpf, uniqueness: true
	validates_each :cpf do |record, attr, value|
    	record.errors.add(attr, 'não é válido') unless CpfUtils.cpf_valido? value
  	end

	accepts_nested_attributes_for :person

	paginates_per 5
	#resourcify
end
