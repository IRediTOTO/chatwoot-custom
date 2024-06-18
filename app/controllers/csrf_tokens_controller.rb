class CsrfTokensController < ApplicationController
  before_action :validate_key
  protect_from_forgery with: :null_session

  def create
    render json: { csrf_token: form_authenticity_token }
  end
  private

  def validate_key
    unless params[:key] == 'htHupWRHSkqUSBWhoM7r5R9bRFaMwc3n'
      render json: { error: 'Invalid key' }, status: :unauthorized
    end
  end
end
