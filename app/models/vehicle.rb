# == Schema Information
#
# Table name: vehicles
#
#  id             :integer          not null, primary key
#  seat           :integer
#  price          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  travel_id      :integer
#  bus_company_id :integer
#  order_number   :integer
#

class Vehicle < ApplicationRecord
	belongs_to :travel
	belongs_to :bus_company
	has_many :drivers

	validates :seat, presence: true
	validates :seat, numericality: true
	validates :order_number, presence: true
	validates :order_number, numericality: true
	validates :price, presence: true
	validates :price, numericality: true
	validates :travel_id, presence: true
	validates :bus_company_id, presence: true

	def to_s
	   "#{bus_company.name} -- Veículo(#{order_number})"	
	end

	paginates_per 5

	#resourcify
end
