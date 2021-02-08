class Placa < ApplicationRecord
  self.table_name = 'placas_carro'


  validates :placa, :proprietario, :modelo, :ano, presence: true
end
