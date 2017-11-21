class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @bericht = message.bericht

    mail to: "Richard.felius@gmail.com", from: message.email
  end
end
