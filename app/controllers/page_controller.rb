class PageController < ApplicationController
    def bairro
        @pie = Chamado.group(:bairro).count
        @a = {}
        @b = {}
        @c = {}
        @def = {}
        @ghi = {}
        @jl = {}
        @mn = {}
        @pr = {}
        @s = {}
        @tvz = {}
        @pie.each {|key, value|
            if key[0] == 'A'
                @a[key] = value
            elsif key[0] == 'B'
                @b[key] = value
            elsif key[0] == 'C'
                @c[key] = value
            elsif key[0] == 'D'
                @def[key] = value
            elsif key[0] == 'E'
                @def[key] = value
            elsif key[0] == 'F'
                @def[key] = value
            elsif key[0] == 'G'
                @ghi[key] = value
            elsif key[0] == 'H'
                @ghi[key] = value
            elsif key[0] == 'I'
                @ghi[key] = value
            elsif key[0] == 'J'
                @jl[key] = value
            elsif key[0] == 'L'
                @jl[key] = value
            elsif key[0] == 'M'
                @mn[key] = value
            elsif key[0] == 'N'
                @mn[key] = value
            elsif key[0] == 'P'
                @pr[key] = value
            elsif key[0] == 'R'
                @pr[key] = value
            elsif key[0] == 'S'
                @s[key] = value
            elsif key[0] == 'T'
                @tvz[key] = value
            elsif key[0] == 'U'
                @u[key] = value
            elsif key[0] == 'V'
                @tvz[key] = value
            elsif key[0] == 'Z'
                @tvz[key] = value
            end
        }
    
    
    end
    
    def descarte
        @mot = Chamado.group(:motivo_descarte).count
        @motivo = {}
        @mot.each {|key, value|
            if key == ''
                @motivo['TOTAL DOS CHAMADOS CONCLUIDOS'] = value
            else
                @motivo[key] = value
            end
        }
    end
    
    def ocorrencia
        @oco = Chamado.group(:tipo_ocorrencia).count
        @ocorrencia = {}
        @oco.each{|key, value|
            if key == "\n"
                @ocorrencia['DESCARTADO'] = value
            else
                @ocorrencia[key] = value
            end
        }
        @tip = Chamado.group(:tipo_chamada).count
        @tipcha = {}
        @tipnoob = {}
        @tip.each {|key, value|
            if key == ""
                @tipcha["DESCARTADO / NÃO PRENCHIDA"] = value
            elsif key == 'DIABETES'
                @tipcha['DIABETE'] += value
            elsif value < 50
                @tipnoob[key] = value
            else
                @tipcha[key] = value
            end
            
        }
    end
end
