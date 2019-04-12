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
        for coluna = 0..(linha_atual.size-1)
            heroi_esta_aqui = mapa[linha][coluna] == caractere_do_heroi
            if heroi_esta_aqui
                # Achei o Heroi
                puts achei
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