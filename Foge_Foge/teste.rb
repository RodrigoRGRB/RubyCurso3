bem_vindo = ->(nome){
    puts "Bem vindo #{nome}"
}

minha_funcao = bem_vindo
minha_funcao.call("Rodrigo")