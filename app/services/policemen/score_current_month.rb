module Policemen
  class ScoreCurrentMonth
    def initialize(policeman)
      @policeman = policeman
    end

    def call
      sum_by_month
    end

    private

    attr_reader :policeman

    def sum_by_month
      policeman.occurrences.where(date: Time.current.beginning_of_month..Time.current.end_of_month).sum(&:value)
    end
  end
end