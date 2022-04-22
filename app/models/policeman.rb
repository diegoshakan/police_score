class Policeman < ApplicationRecord
  has_many :occurrences, dependent: :destroy

  accepts_nested_attributes_for :occurrences

  validates :position, :name, presence: true

  def total_score
    Policemen::TotalScore.new(self).call
  end
end
