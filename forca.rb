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

nome = de_boas_vindas
sortea_palavra(nome)