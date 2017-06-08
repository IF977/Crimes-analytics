# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
require 'date'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Hellcife.csv'))
csv = CSV.parse(csv_text, :headers => true)
i=0
csv.each do |row|
       lin = row.to_s
       linha = lin.split(";")
       b = Chamado.new
       i=i+1
       puts i
       b['numero_solicitacao']=linha[0].to_s
       dt = Date.strptime(linha[1].gsub("/","-"))
       b['data_solicitacao']=dt
       b['sexo']=linha[2].to_s
       b['idade']=linha[3].to_s
       b['codigo_bairro']=linha[4].to_s
       b['bairro']=linha[5].to_s
       b['origem_chamado']=linha[6].to_s
       b['situacao_chamado']=linha[7].to_s
       b['tipo_chamada']=linha[8].to_s
       b['motivo_descarte']=linha[9].to_s
       b['tipo_ocorrencia']=linha[10].to_s
       b.save!
    #t.nome_bairro = row['nome_bairro']
end 