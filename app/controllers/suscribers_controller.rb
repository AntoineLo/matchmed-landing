class SuscribersController < ApplicationController

  def create
    @suscriber = Suscriber.new(params_suscriber)
    @suscriber.save
    if params_suscriber[:phone].nil?
      flash[:notice] = "Merci pour votre confiance ! Nous vous informerons par email du lancement de la plateforme."
    else
      flash[:notice] = "Message bien reçu, nous vous rappelons au plus vite !"
      UserMailer.callback(@suscriber).deliver_now
    end
    redirect_to :root
  end

  private

  def params_suscriber
    params.require(:suscriber).permit(:email, :name, :phone, :has_practice)
  end

end
