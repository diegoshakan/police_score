class Policemen::LastMonthController < ApplicationController
  def index
    @policemen = Policeman.last_month_with_occurrence.limit(5).sort_by(&:score_current_month).reverse
  end
end
