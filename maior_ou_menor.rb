def da_boas_vindas
    puts "Bem vindo ao jogo da adivizinhação"
    puts "Qual o seu nome"
    nome = gets.strip
    puts "\n\n\n\n\n" 
    puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero
    puts "Escolhendo um numero secreto de 0 a 200..."
    numero_secreto = rand(200)
    puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
    puts "\n\n\n\n" 
    numero_secreto
end

def pede_numero(chutes, tentativa, limite)
    puts "voce possui #{tentativa} de #{limite}"
    puts "Chutes até agora #{chutes}"
    puts "\nentre com seu numero"
    chute = gets.strip
    puts "Será que acertou? voce digitou #{chute}"
    chute.to_i
end

def verifica_numero(chute, numero_secreto)
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou"
        return true
    end
        
    maior = numero_secreto > chute
    if maior
        puts "numero secreto é maior"
    else
        puts "numero secreto é menor"
    end
    false
end

da_boas_vindas
numero_secreto = sorteia_numero
pontos_ate_agora = 1000
limite = 5
chutes = []

for tentativa in 1..limite
    chute = pede_numero(chutes, tentativa, limite)
    chutes << chute

    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    break if verifica_numero(chute, numero_secreto)
end

puts "Você ganhou #{pontos_ate_agora} pontos"