class Occurrence < ApplicationRecord
  before_save :add_value

  belongs_to :policeman

  validates :type_name, :date, presence: true

  scope :current_month, -> { where(date: Time.current.beginning_of_month..Time.current.end_of_month) }
  scope :last_month, -> { where(date: (Time.current.beginning_of_month - 1.month)..(Time.current.end_of_month - 1.month)) }

  enum type_name:  [
    "Flagranteado",
    "Arma longa",
    "Pistola",
    "Revólver",
    "Arma caseira",
    "Simulacro",
    "Droga até 1kg",
    "Droga mais de 1kg",
    "Recuperação de veículo roubado"
  ]

  private

  def add_value
    Occurrences::AddValue.new(self).call
  end
end
