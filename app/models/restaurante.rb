class Restaurante < ActiveRecord::Base

	validates_presence_of :nome, message: "deve ser preenchido"
	validates_presence_of :endereco, message: "deve ser preenchido"
	validates_presence_of :especialidade, message: "deve ser preenchido"

	validates_uniqueness_of :nome, message: "nome ja cadastrato"
	#validate :primeira_letra_deve_ser_maiuscula

	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	scope :massas, where(especialidade: 'massas')


	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome, "primeira letra deve ser maiuscula") unless :nome =~ /[A-Z].*/
	end
end
