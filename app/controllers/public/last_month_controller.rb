module Public
  class LastMonthController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :set_policeman, only: %i[ show ]

    def index
      @policemen = Policeman.last_month_with_occurrence.sort_by(&:score_last_month).last(5).reverse
    end

    def show; end

    private

    def set_policeman
      @policeman = Policeman.find(params[:id])
    end
  end
end
