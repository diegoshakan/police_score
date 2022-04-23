require 'rails_helper'

RSpec.describe Policemen::ScoreLastMonth do
  before do
    @policeman = FactoryBot.create(:policeman)
    @occurrences = FactoryBot.create_list(:occurrence, 3, value: 10, policeman: @policeman, date: DateTime.now)
    @oc_last_month = FactoryBot.create(:occurrence, value: 10, policeman: @policeman, date: DateTime.now - 1.month)
    @oc_last_last_month = FactoryBot.create(:occurrence, value: 10, policeman: @policeman, date: DateTime.now - 2.month)
  end

  it '#call' do
    result = Policemen::ScoreLastMonth.new(@policeman).call
    expect(result).to eq(10)
  end
end
