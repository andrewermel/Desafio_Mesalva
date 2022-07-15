require 'test_helper'

class UsuarioMailerTest < ActionMailer::TestCase
  test "musica_adicionada" do
    mail = UsuarioMailer.musica_adicionada
    assert_equal "Musica adicionada", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
