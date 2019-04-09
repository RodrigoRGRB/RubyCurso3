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

def joga(nome)
    palavra_secreta = sortea_palavra(nome)

    erros = 0
    chutes = []
    ponto_ate_agora = 0

    while erros < 5
        chute = pede_um_chute(chutes, erros)
        chutes << chute

        chutou_letra = chute.size == 1
        if chutou_letra
            letra_procurada = chute[0]
            contador = 0
            for i in 0..(palavra_secreta.size - 1)
                if palavra_secreta[i] == letra_procurada
                    contador += 1
                end
            end
            if contador != 0
                puts "Letra encontrada #{contador} vezes"
            else
                puts "Errou!"
                erros += 1
            end




        else
            acertou = chute == palavra_secreta
            if acertou
                puts "Parabens acertou!!!"
                ponto_ate_agora += 100
                break
            else
                erros += 1
                ponto_ate_agora -= 30
            end
        end


    end
    puts "Voce ganhou #{ponto_ate_agora} pontos."
end

nome = de_boas_vindas

loop do 
    joga(nome)
    if nao_quer_jogar?
        break
    end
end