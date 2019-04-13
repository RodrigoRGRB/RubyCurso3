def da_boas_vindas
    puts "Bem vindo ao foge foge"
    puts "Qual é seu nome"
    nome = gets.strip
    puts "\n\n\n\n\n "
    nome
end

def desenha(mapa)
    puts mapa
    mapa
end

def pede_movimento
    puts "para onde deseja ir"
    movimento = gets.strip
end

def gameover
    puts "game over"
end