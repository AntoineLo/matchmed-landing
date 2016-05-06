class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  # skip_after_action :verify_authorized, only: :home
  # before_filter :disable_flashes, only: [:home]
  # before_filter :disable_navbar, only: [:home]

  def home
    @suscriber = Suscriber.new

    # Track a user event
    Analytics.track(
      {
        anonymous_id: "anonymous",
        event: 'New visit'
      }
    )
  end
end
