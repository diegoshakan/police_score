require 'rails_helper'

RSpec.describe Policemen::TotalScore do
  before do
    @policeman = FactoryBot.create(:policeman)
    @occurrences = FactoryBot.create_list(:occurrence, 3, value: 10, policeman: @policeman, date: DateTime.now)
  end

  context "score" do
    it 'total' do
      result = Policemen::TotalScore.new(@policeman).call
      expect(result).to eq(30)
    end
  end
end