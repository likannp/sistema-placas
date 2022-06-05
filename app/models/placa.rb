class Placa < ApplicationRecord
  self.table_name = 'placas_carro'


  validates :placa, :proprietario, :modelo, :ano, presence: { message: "Deve ser preenchido"}
  validates :placa, format: { with: /^[a-zA-Z]{3}[0-9]{4}$/, message: "Placa inválida (aaa0000)" }
  validates :ano, length: { is: 4, message: "Apenas 4 números (yyyy)" }
end
