class Api::BasesController < ApplicationController
  before_action :login_user
  before_action :authenticate_user!

  protect_from_forgery with: :null_session, if: Proc.new {|c| c.request.format.json?}

  private
  def login_user
    user = User.last
    return unless user
    sign_in user
  end
end
