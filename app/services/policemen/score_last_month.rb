module Policemen
  class ScoreLastMonth
    def initialize(policeman)
      @policeman = policeman
    end

    def call
      score_last_month
    end

    private

    attr_reader :policeman

    def score_last_month
      policeman.occurrences.where(date: (Time.current.beginning_of_month - 1.month)..(Time.current.end_of_month - 1.month)).sum(&:value)
    end
  end
end
