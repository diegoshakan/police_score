require 'rails_helper'

describe Policemen::TotalScore do
  # let(:policeman) { create(:policeman) }
  # let(:occurrences) { create_list(:occurrence, 3, policeman: policeman)}
  before do
    @policeman = FactoryBot.create(:policeman)
    @occurrences = FactoryBot.create_list(:occurrence, 3, policeman: @policeman)
  end

  context "score" do
    it 'total' do
      result = @policeman.occurrences.sum(&:value)
      expect(result).to eq(300)
    end
  end
end