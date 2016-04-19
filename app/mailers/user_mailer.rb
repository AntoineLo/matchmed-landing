class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.callback.subject
  #
  def callback(suscriber)
    @suscriber = suscriber

    mail(to: ["marguerite@docadoc.fr", "adrien@docadoc.fr", "antoine@docadoc.fr"], subject: "Nouveau client ! #{@suscriber.name} à recontacter !")
  end
end
