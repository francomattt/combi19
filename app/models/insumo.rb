class Insumo < ApplicationRecord


	validates :tipo, presence: true
	validates :cant, presence: true
	validates :price, presence: true
end
