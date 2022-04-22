module Policemen
  class TotalScore
    def initialize(policeman)
      @policeman = policeman
    end

    def call
      total_score
    end

    private

    attr_reader :policeman

    def total_score
      policeman.occurrences.sum(&:value)
    end
  end
end
