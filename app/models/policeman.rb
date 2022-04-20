class Policeman < ApplicationRecord
  has_many :occurrences, dependent: :destroy

  accepts_nested_attributes_for :occurrences
end
