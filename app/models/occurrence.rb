class Occurrence < ApplicationRecord
  before_save :add_value

  belongs_to :policeman

  validates :type_name, :date, presence: true

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

  def add_name
    self.type_name = Occurrence.type_names["#{self.type_name}"]
  end
end
