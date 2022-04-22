class Occurrence < ApplicationRecord
  belongs_to :policeman

  validates :type_name, :value, :date, presence: true
end
