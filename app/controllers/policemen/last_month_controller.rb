class Policemen::LastMonthController < ApplicationController
  def index
    @policemen = Policeman.last_month_with_occurrence.sort_by(&:score_last_month).last(5).reverse
  end
end
