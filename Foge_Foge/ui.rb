def da_boas_vindas
    puts "Bem vindo ao foge foge"
    puts "Qual é seu nome"
    nome = gets.strip
    puts "\n\n\n\n\n "
    nome
end

def encontra_jogador(mapa)
    caractere_do_heroi = "H"
    for linha = 0..(mapa.size-1)
        linha_atual = mapa[linha]
        coluna_do_heroi = linha_atual.index caractere_do_heroi
        if coluna_do_heroi

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