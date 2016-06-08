class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.callback.subject
  #
  def callback(suscriber)
    @suscriber = suscriber
    if @suscriber.has_practice
      status = "Pro installé"
    elsif @suscriber.has_practice == false
      status = "Remplaçant"
    else
      status = "Statut non spécifié"
    end

    mail(to: ["marguerite@medgo.fr", "adrien@medgo.fr", "antoine@medgo.fr"], subject: "Nouvel inscrit (#{status}! Contact = #{@suscriber.email}")
  end
end
