def da_boas_vindas
    puts "Bem vindo ao foge foge"
    puts "Qual é seu nome"
    nome = gets.strip
    puts "\n\n\n\n\n "
    nome
end

def encontra_jogador(mapa)
    for linha = 0..(mapa.size-1)
        if mapa[linha].include? "H"
            for coluna = 0..(mapa[linha].size-1)
                if mapa[linha][coluna] == "H"
                    # Achei o Heroi
                end
        end
    end
    # nao achei o Heroi
end

def desenha(mapa)
    puts mapa
    mapa
end

def pede_movimento
    puts "para onde deseja ir"
    movimento = gets.strip
end