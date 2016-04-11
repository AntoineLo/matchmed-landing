class SuscribersController < ApplicationController

  def create
    @suscriber = Suscriber.new(params_suscriber)
    @suscriber.save
    flash[:notice] = "Merci pour votre confiance ! Nous vous informerons par email du lancement de la plateforme."
    redirect_to :root
  end

  private

  def params_suscriber
    params.require(:suscriber).permit(:email)
  end

end
