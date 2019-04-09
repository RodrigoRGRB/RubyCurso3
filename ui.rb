def avisa_chute chute
    puts "Voce já chutou #{chute}"
end

def avisa_letra_nao_encontrada
    puts "Errou! Letra não encontrada"
end

def avisa_letra_encontrada total_encontrado
    puts "Letra encontrada #{total_encontrado} vezes"
end

def acertou_palavra
    puts "Parabens acertou!!!"
end

def errou_palavra
    puts "Que pena errou a palavra"
end

def avisa_pontos ponto_ate_agora
    puts "Voce ganhou #{ponto_ate_agora} pontos."
end

def de_boas_vindas
    puts "Seja bem vindo ao incrivel jogo da forca"
    puts "Para começar diga seu nome:"
    nome = gets.strip
end

def sortea_palavra(nome)
    puts "#{nome} estamos buscando uma palavra bem dificil pra voce"
    palavra_secreta = "pokemon"
    puts "Pronto já achamos a palavra secreta que possui #{palavra_secreta.size}"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com uma letra ou palavra"
    chute = gets.strip
    puts "será que acertou? voce chutou #{chute}"
    chute
end
