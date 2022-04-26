class Policeman < ApplicationRecord
  has_many :occurrences, dependent: :destroy

  accepts_nested_attributes_for :occurrences

  validates :position, :name, presence: true

  scope :last_month_with_occurrence, -> { includes(:occurrences).where(occurrences: { date: (Time.current.beginning_of_month - 1.month)..(Time.current.end_of_month - 1.month) }) }

  enum position: {
    "Aluno Soldado": "Aluno Soldado",
    "Soldado": "Soldado",
    "Cabo": "Cabo",
    "Aluno Sargento": "Aluno Sargento",
    "3º Sargento": "3º Sargento",
    "2º Sargento": "2º Sargento",
    "1º Sargento": "1º Sargento",
    "Subtenente": "Subtenente",
    "Aspirante": "Aspirante",
    "2º Tenente": "2º Tenente",
    "1º Tenente": "1º Tenente",
    "Capitão": "Capitão",
    "Major": "Major",
    "Tenente-Coronel": "Tenente-Coronel",
    "Coronel": "Coronel"
  }

  def total_score
    Policemen::TotalScore.new(self).call
  end

  def score_current_month
    Policemen::ScoreCurrentMonth.new(self).call
  end

  def score_last_month
    Policemen::ScoreLastMonth.new(self).call
  end
end
