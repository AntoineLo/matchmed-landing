class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.callback.subject
  #
  def callback(suscriber)
    @suscriber = suscriber

    mail(to: ["marguerite@medgo.fr", "adrien@medgo.fr", "antoine@medgo.fr"], subject: "Nouveau client ! #{@suscriber.name} à recontacter !")
  end
end
