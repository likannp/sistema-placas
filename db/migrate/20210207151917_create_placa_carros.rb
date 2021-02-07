class CreatePlacaCarros < ActiveRecord::Migration[6.0]
  def change
    create_table :placas_carro, {id: false} do |t|
      t.string :placa, primary_key: true
      t.string :proprietario
      t.string :modelo
      t.integer :ano

      t.timestamps
    end
  end
end
