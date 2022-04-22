module Policemen
  class TotalScore
    def initialize(policeman)
      @policeman = policeman
    end

    def call
      @policeman.occurrences.sum(&:value)
    end
  end
end
