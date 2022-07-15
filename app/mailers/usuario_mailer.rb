class UsuarioMailer < ApplicationMailer

  def musica_adicionada

    mail to: "andrew.ermel@gmails.com", subject: 'musica nova adicionada'
  end
end
