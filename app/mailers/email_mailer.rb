class EmailMailer < ActionMailer::Base
    default from: "contato@centralvec.com.br"

    def contato(nome, email, telefone, mensagem)
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (Veículos)')
    end

    def proposta(link, modelo, nome, email, telefone, mensagem)
        @link = link
        @modelo = modelo
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (veículos)')
    end


    def corretora(nome, email, telefone, mensagem)
        @nome = nome
        @email = email
        @telefone = telefone
        @mensagem = mensagem
        mail(to: 'leonardodsouza@gmail.com', subject: 'Contato (Corretora)')
    end

    def recuperar_senha(usuario)
        @usuario = usuario
        mail(to: @usuario.email, subject: 'Recuperação de senha.')
    end
end
