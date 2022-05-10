module Public
  class LastMonthController < ApplicationController
    skip_before_action :authenticate_user!

    def index
      @policemen = Policeman.last_month_with_occurrence.sort_by(&:score_last_month).last(5).reverse
    end
  end
end
