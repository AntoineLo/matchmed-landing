class SuscribersController < ApplicationController

  def create
    @suscriber = Suscriber.find(params_suscriber)
    @suscriber.save
    redirect_to :root
  end

  private

  def params_suscriber
    params.require(:suscriber).permit(:email)
  end

end
