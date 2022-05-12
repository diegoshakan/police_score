class PublicController < ApplicationController
  before_action :set_policeman, only: %i[ show ]
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      @policemen = Policeman.where("name LIKE ?", "%#{params[:query]}%")
    else
      @policemen = Policeman.all.sort_by(&:score_current_month).reverse
    end

    respond_to do |format|
      if turbo_frame_request? and turbo_frame_request_id == 'search'
        format.html { render partial: "policemen_table", locals: { policemen: @policemen } }
      else
        format.html
      end
    end
  end

  def show; end

  private

  def set_policeman
    @policeman = Policeman.find(params[:id])
  end
end
