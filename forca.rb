def de_boas_vindas
    puts "Seja bem vindo ao incrivel jogo da forca"
    puts "Para começar diga seu nome:"
    nome = gets.strip
end

def sortea_palavra(nome)
    puts "#{nome} estamos buscando uma palavra bem dificil pra voce"
    palavra_secreta = "pokemon"
    puts "Pronto já achamos a palavra secreta que possui #{palavra_secreta.size}"
end

def pede_uma_letra(chutes,tentativa, limite)
    puts "\n\n\n\nTentativa #{tentativa} de #{limite}"
    puts "Chutes até agora\n #{chutes}"
    puts "Digite uma letra"
    chute = gets.strip
    chutes << chute
end

#defini variaveis
tentativa = 0
limite = 5
chutes=[]

nome = de_boas_vindas
sortea_palavra(nome)
chutes = pede_uma_letra tentativa, limite, chutes

pede_uma_letra