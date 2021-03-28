class MainMailer < ApplicationMailer

  def contact_email(comment)
    @email = comment[:email]
    @nome = comment[:nome]
    @telefone = comment[:telefone]
    @mensagem = comment[:mensagem]

    mail(to: Pusher.app_id, subject: "Contato Portfólio")
  end
end
