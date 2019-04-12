require_relative "ui"
require_relative "rank"

def sortea_palavra(nome)
    avisa_busca_palavra nome
    texto = File.read("dicionario.txt")
    todas_palavras = texto.split "\n"
    numero_escolhido = rand(todas_palavras.size)
    palavra_secreta = todas_palavras[numero_escolhido].downcase
    avisa_palavra_escolhida palavra_secreta
end

def palavra_mascarada chutes, palavra_secreta
    mascara = ""
    for letra in palavra_secreta.chars
        if chutes.include? letra
            mascara << letra
        else
            mascara << "_"
        end
    end
    mascara
end

def pede_um_chute_valido chutes, erros, mascara
    cabecalho_de_tetativas chutes, erros, mascara
    loop do
        chute = pede_um_chute
        if chutes.include? chute
            avisa_chute chute
        else
            return chute
        end 
    end
end

def joga(nome)
    palavra_secreta = sortea_palavra(nome)

    erros = 0
    chutes = []
    ponto_ate_agora = 0

    while erros < 5
        mascara = palavra_mascarada chutes, palavra_secreta
        chute = pede_um_chute_valido(chutes, erros, mascara)
        chutes << chute

        chutou_letra = chute.size == 1
        if chutou_letra
            letra_procurada = chute[0]
            
            total_encontrado = palavra_secreta.count letra_procurada

            if total_encontrado == 0
                avisa_letra_nao_encontrada
                erros += 1
                ponto_ate_agora -= 5
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
    ponto_ate_agora
end

def jogo_da_forca
    nome = de_boas_vindas
    pontos_totais = 0

    avisa_campeao_atual(le_rank)

    loop do 
        pontos_totais += joga(nome)
        avisa_pontos_totais pontos_totais
        
        if le_rank[1].to_i < pontos_totais
            salvar_rank nome, pontos_totais
        end

        if nao_quer_jogar?
            break
        end
    end
end
