class Policemen::LastMonthController < ApplicationController
  def index
    @policemen = Policeman.last_month_with_occurrence.limit(5)
  end
end
