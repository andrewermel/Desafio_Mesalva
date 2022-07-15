# Preview all emails at http://localhost:3000/rails/mailers/usuario_mailer
class UsuarioMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/usuario_mailer/musica_adicionada
  def musica_adicionada
    UsuarioMailer.musica_adicionada
  end

end
