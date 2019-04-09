require_relative "ui"

def joga(nome)
    palavra_secreta = sortea_palavra(nome)

    erros = 0
    chutes = []
    ponto_ate_agora = 0

    while erros < 5
        chute = pede_um_chute(chutes, erros)
        
        if chutes.include? chute
            avisa_chute chute
            next
        end 

        chutes << chute

        chutou_letra = chute.size == 1
        if chutou_letra
            letra_procurada = chute[0]
            
            total_encontrado = palavra_secreta.count letra_procurada

            if total_encontrado == 0
                avisa_letra_nao_encontrada
                erros += 1
            else
                avisa_letra_encontrada total_encontrado
            end

        else
            acertou = chute == palavra_secreta
            if acertou
                acertou_palavra
                ponto_ate_agora += 100
                break
            else
                errou_palavra
                erros += 1
                ponto_ate_agora -= 30
            end
        end


    end
   
    avisa_pontos ponto_ate_agora

end

nome = de_boas_vindas

loop do 
    joga(nome)
    if nao_quer_jogar?
        break
    end
end