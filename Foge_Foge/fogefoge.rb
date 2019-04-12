require_relative "ui"

def le_mapa(numero)
    arquivo = "mapa#{numero}.txt"
    texto = File.read arquivo
    mapa = texto.split "\n"
end

def joga(nome)
    mapa = le_mapa 1

    while true
        desenha(mapa)
        direcao = pede_movimento
        heroi = encontra_jogador mapa
        
        mapa[heroi[0]][heroi[1]] = " "
        case direcao
            when "W"
                heroi[0] -= 1
            when "S"
                heroi[0] += 1
            when "A"
                heroi[1] -= 1
            when "D"
                heroi[1] += 1
        end
        mapa[heroi[0]][heroi[1]] = "H"
    end
end

def inicia_fogefoge
    nome = da_boas_vindas
    joga(nome)
end