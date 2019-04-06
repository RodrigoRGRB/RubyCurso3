puts "Bem vindo ao jogo da adivizinhação"
puts "Qual o seu nome"
nome = gets
puts 
puts
puts
puts "Começaremos o jogo para você, #{nome}"
puts "Escolhendo um numero secreto de 0 a 200..."
numero_secreto = 175

puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"

puts 
puts
puts "tentaiva 1"
puts "entre com seu numero"
chute = gets
puts "Será que acertou? voce digitou #{chute}"
puts chute.to_i == numero_secreto
