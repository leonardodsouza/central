class EmailMailer < ActionMailer::Base
    default from: "contato@centralvec.com.br"

    def contato(nome, email, telefone, mensagem)
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'centraldeveiculosrs@yahoo.com.br', subject: 'Contato (Veículos)')
    end

    def proposta(link, modelo, nome, email, telefone, mensagem)
        @link = link
        @modelo = modelo
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'centraldeveiculosrs@yahoo.com.br', subject: 'Contato (veículos)')
    end

    def corretora(nome, email, telefone, mensagem)
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'centraldeveiculosrs@yahoo.com.br', subject: 'Contato (Corretora)')
    end

    def recuperar_senha(usuario)
        @usuario = usuario
        mail(to: @usuario.email, subject: 'Recuperação de senha.')
    end

    def enviar_email_auto(veiculo, ano, placa, renavam, nome, email, telefone, cpf, nascimento, primeira, civil, profissao, endereco, garagem_residencia, garagem_trabalho, estender )
        @veiculo = veiculo
        @ano = ano
        @placa = placa
        @renavam = renavam
        @nome = nome
        @email = email
        @telefone = telefone 
        @cpf = cpf
        @nascimento = nascimento
        @primeira = primeira
        @civil = civil
        @profissao = profissao
        @endereco = endereco
        @garagem_residencia = garagem_residencia
        @garagem_trabalho = garagem_trabalho
        @estender = estender
        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (Corretora)')
    end

    def enviar_email_residencia(nome, email, telefone, cpf, nascimento, civil, endereco, tipo, incendio, vendaval, eletricos, terceiros, outros)
        @nome = nome
        @email = email
        @telefone = telefone
        @cpf = cpf
        @nascimento = nascimento
        @civil  = civil
        @endereco = endereco
        @tipo = tipo
        @incendio = incendio
        @vendaval = vendaval
        @eletricos = eletricos
        @terceiros = terceiros
        @outros = outros  
        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (Corretora)')
    end

    def enviar_email_locacao(nome, email, telefone, imovel, aluguel, iptu, agua, condominio, luz, gas,
        inquilino, nascimento, sexo,imovel_inquilino,endereco,cpf,rg,civil,email_inquilino,telefone_inquilino,        
        empresa,endereco_empresa,telefone_empresa,admissao,renda_inquilino,banco,gerente,telefone_banco,endereco_banco,
        conta,desde,referencia1,referencia2,conjuge,nascimento_conjuge,cpf_conjuge,rg_conjuge,email_conjuge,telefone_conjuge,
        empresa_conjuge,endereco_empresa_conjuge,telefone_empresa_conjuge,admissao_conjuge,renda_conjuge )
        @nome = nome
        @email = email
        @telefone = telefone
        @imovel = imovel
        @aluguel = aluguel
        @iptu = iptu
        @agua = agua
        @condominio = condominio
        @luz = luz
        @gas = gas
        @inquilino = inquilino
        @nascimento =nascimento
        @sexo =sexo
        @imovel_inquilino =imovel_inquilino
        @endereco=endereco
        @cpf=cpf
        @rg=rg
        @civil=civil
        @email_inquilino=email_inquilino
        @telefone_inquilino=  telefone_inquilino      
        @empresa=empresa
        @endereco_empresa=endereco_empresa
        @telefone_empresa=telefone_empresa
        @admissao=admissao
        @renda_inquilino=renda_inquilino
        @banco=banco
        @gerente=gerente
        @telefone_banco=telefone_banco
        @endereco_banco=endereco_banco
        @conta=conta
        @desde=desde
        @referencia1=referencia1
        @referencia2=referencia2
        @conjuge=conjuge
        @nascimento_conjuge=nascimento_conjuge
        @cpf_conjuge=cpf_conjuge
        @rg_conjuge=rg_conjuge
        @email_conjuge=email_conjuge
        @telefone_conjuge=telefone_conjuge
        @empresa_conjuge=empresa_conjuge
        @endereco_empresa_conjuge=endereco_empresa_conjuge
        @telefone_empresa_conjuge=telefone_empresa_conjuge
        @admissao_conjuge=admissao_conjuge
        @renda_conjuge=renda_conjuge

        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (Corretora)')
    end

end
