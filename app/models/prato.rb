class Prato < ActiveRecord::Base

	validates_presence_of :nome, message: " - deve ser obrigatorio"
	validates_uniquess_of :nome, message: " - nome ja cadastrado"

	has_and_belongs_to_many :restaurantes
	has_one :receita

	validate :validate_presence_of_more_than_one_restaurante

	private
	def validate_presence_of_more_than_one_restaurante
		erros.add("restaurantes", "deve haver ao menos um restaurante") if restaurantes.empty?
	end
end
