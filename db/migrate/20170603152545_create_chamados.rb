class CreateChamados < ActiveRecord::Migration
  def change
    create_table :chamados do |t|
      t.string :numero_solicitacao
      t.date :data_solicitacao
      t.string :sexo
      t.string :idade
      t.string :codigo_bairro
      t.string :bairro
      t.string :origem_chamado
      t.string :situacao_chamado
      t.string :tipo_chamada
      t.string :motivo_descarte
      t.string :tipo_ocorrencia

      t.timestamps null: false
    end
  end
end
