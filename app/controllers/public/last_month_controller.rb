module Public
  class LastMonthController < ApplicationController
    skip_before_action :authenticate_user!

    def index
      @policemen = Policeman.last_month_with_occurrence.limit(5)
    end
  end
end
