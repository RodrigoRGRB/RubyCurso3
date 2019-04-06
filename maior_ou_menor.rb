puts "Bem vindo ao jogo da adivizinhação"
puts "Qual o seu nome"
nome = gets

puts "\n\n\n\n\n" 
puts "Começaremos o jogo para você, #{nome}"
puts "Escolhendo um numero secreto de 0 a 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
puts "\n\n\n\n" 

puts "tentaiva 1"
puts "entre com seu numero"
chute = gets
puts "Será que acertou? voce digitou #{chute}"

acertou = numero_secreto == chute.to_i

if acertou
    puts "Acertou"
else
    maior = numero_secreto > chute.to_i
    if maior
        puts "numero secreto é maior"
    else
        puts "numero secreto é menor"
    end
end
