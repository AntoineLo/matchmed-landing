class SuscribersController < ApplicationController

  def create
    @suscriber = Suscriber.new(params_suscriber)
    if @suscriber.save
      flash[:notice] = "Merci pour votre confiance ! Nous vous informerons très vite du lancement de la plateforme."
      UserMailer.callback(@suscriber).deliver_now
      redirect_to root_path
    else
      flash[:alert] = "Merci de renseigner vos coordonnées avant de valider."
      redirect_to root_path
    end
  end

  private

  def params_suscriber
    params.require(:suscriber).permit(:email, :name, :phone, :has_practice)
  end

end
