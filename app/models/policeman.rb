class Policeman < ApplicationRecord
  has_many :occurrences, dependent: :destroy

  accepts_nested_attributes_for :occurrences

  validates :position, :name, presence: true

  scope :last_month_with_occurrence, -> { includes(:occurrences).where(occurrences: { date: (Time.current.beginning_of_month - 1.month)..(Time.current.end_of_month - 1.month) }) }

  def total_score
    Policemen::TotalScore.new(self).call
  end

  def score_current_month
    Policemen::ScoreCurrentMonth.new(self).call
  end
end
